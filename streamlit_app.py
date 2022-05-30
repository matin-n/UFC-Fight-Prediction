import os
import numpy as np
import pandas as pd
from joblib import load
from plotly.subplots import make_subplots
import plotly.graph_objects as go
import streamlit as st

# Load Scraped Data 
def load_data(data="Resources/train_preprocessed.joblib"):
    df = load(os.path.join(data)) 
    # Return dataframe
    return df

# Load Machine Learning Model
def load_model(classifier="Resources/Models/clf.joblib"):   
    return load(os.path.join(classifier))

# Predict who wins the fight.
def predict(df):    
    return clf.predict(df), clf.predict_proba(df)

# Load dataframe that contains fight matchups and results
ufc_df = load_data()

# Dataframe for charts
chart_df = ufc_df[["R_Age_Bucket", "B_Age_Bucket", "B_Height_Bucket", "R_Height_Bucket", "B_Stance", "R_Stance", "Weight_Class", "Winner"]]

# Load dataframe that contains individual fighter stats
fighter_agg_stats = load_data(data="Resources/fighter_stats.joblib")

# Load Machine Learning Model
clf = load_model()


# App Layout
# ------------------------- #
# Sidebar
# ----- #
with st.sidebar:
    st.sidebar.header("Options")
    # Model Selection
    st.sidebar.subheader("Model Selection")
    model_selection = st.sidebar.selectbox(
        "Classifier",
        [
            "VotingClassifier",
            "Gradient Boosting",
            "Random Forest",
            "Neural Network (MLP)",
            "C-Support Vector",
            "XGBoost",
        ],
    )
    # Data Selection
    st.sidebar.subheader("Prediction Options")
    data_selection = st.sidebar.selectbox(
        "Data Selection",
        ["Upcoming Fights", 
        "Fighter vs. Fighter", 
        # "Create Your Own Fighter",
        ],
    )

    # If user selected "Upcoming Fights" then allow user to pick and predict a upcoming fight.
    if data_selection == "Upcoming Fights":
        upcoming_fight_matchup = st.sidebar.selectbox(
            "Upcoming Fights", ufc_df[ufc_df["Event_Date"] >= pd.to_datetime("2022-03-18")]["Matchup"], # TODO: scrape upcoming events
        )
    elif data_selection == "Fighter vs. Fighter":
        # Fighter vs. Fighter
        blue_fighter = st.sidebar.selectbox(
            "Blue Fighter", fighter_agg_stats["Name"]
        )
        red_fighter = st.sidebar.selectbox(
            "Red Fighter", fighter_agg_stats["Name"]
        )

    # elif data_selection == "Create Your Own Fighter":
    #     # TODO: Create your own fighter
    #     # I am testing the different Streamlit widgets:
    #     st.sidebar.subheader("First Fighter")
    #     red_fighter_age_2 = st.sidebar.number_input(
    #         "Insert age 1", min_value=18, max_value=75, value=18
    #     )
    #     red_fighter_age = st.sidebar.slider("Fighter 1 Age", 18, 75, 25)
    #     red_fighter_weight = st.sidebar.slider("Fighter 1 Weight (lb)", 115, 265, 150)
    #     red_fighter_stance = st.sidebar.selectbox(
    #         "Fighter 1 Stance", ufc_df["R_Stance"].head(5)
    #     )
    #     st.sidebar.subheader("Second Fighter")
    #     blue_fighter_age_2 = st.sidebar.number_input(
    #         "Insert age 2", min_value=18, max_value=75, value=18
    #     )
    #     blue_fighter_age = st.sidebar.slider("Fighter 2 Age", 18, 75, 25)
    #     blue_fighter_weight = st.sidebar.slider("Fighter 2 Weight (lb)", 115, 265, 150)
    #     blue_fighter_stance = st.sidebar.selectbox(
    #         "Fighter 2 Stance", ufc_df["R_Stance"].head(5)
    #     )

    # Visualization Selection
    st.sidebar.subheader("Visualizations")
    win_rate_by = st.sidebar.selectbox(
        "Win Rate By", ["Age", "Height", "Weight Class", "Stance"]
    )


# Main page
# ----- #
st.title("UFC Fighter Prediction")

# Model Selection
# ----- #
soft_voting_descrption = ">The idea behind the VotingClassifier is to combine conceptually different machine learning classifiers and use the average predicted probabilities (soft vote) to predict the class labels. Such a classifier can be useful for a set of equally well performing model in order to balance out their individual weaknesses. - [SciKit-learn](https://scikit-learn.org/stable/modules/ensemble.html#voting-classifier)"
grading_boosting_description = ">GB builds an additive model in a forward stage-wise fashion; it allows for the optimization of arbitrary differentiable loss functions. In each stage `n_classes_` regression trees are fit on the negative gradient of the binomial or multinomial deviance loss function. Binary classification is a special case where only a single regression tree is induced. - [SciKit-learn](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.GradientBoostingClassifier.html)"
random_forest_descrption = ">A random forest is a meta estimator that fits a number of decision tree classifiers on various sub-samples of the dataset and uses averaging to improve the predictive accuracy and control over-fitting. The sub-sample size is controlled with the `max_samples` parameter if `bootstrap=True` (default), otherwise the whole dataset is used to build each tree. - [SciKit-learn](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.RandomForestClassifier.html)"
mlp_description = ">MLPClassifier trains iteratively since at each time step the partial derivatives of the loss function with respect to the model parameters are computed to update the parameters. It can also have a regularization term added to the loss function that shrinks model parameters to prevent overfitting. - [SciKit-learn](https://scikit-learn.org/stable/modules/generated/sklearn.neural_network.MLPClassifier.html)"
svc_description = ">The implementation is based on libsvm. The fit time scales at least quadratically with the number of samples and may be impractical beyond tens of thousands of samples. - [SciKit-learn](https://scikit-learn.org/stable/modules/generated/sklearn.svm.SVC.html)"
XGBoost_description = ">XGBoost is an optimized distributed gradient boosting library designed to be highly efficient, flexible and portable. It implements machine learning algorithms under the Gradient Boosting framework. XGBoost provides a parallel tree boosting (also known as GBDT, GBM) that solve many data science problems in a fast and accurate way. [XGBoost](https://xgboost.readthedocs.io/en/stable/)"

if model_selection == "VotingClassifier":
    clf = load_model("Resources/Models/clf.joblib")
    st.markdown(soft_voting_descrption)
elif model_selection == "Gradient Boosting":
    clf = load_model("Resources/Models/gbc.joblib")
    st.markdown(grading_boosting_description)
elif model_selection == "Random Forest":
    clf = load_model("Resources/Models/rfc.joblib")
    st.markdown(random_forest_descrption)
elif model_selection == "Neural Network (MLP)":
    clf = load_model("Resources/Models/mlp.joblib")
    st.markdown(mlp_description)
elif model_selection == "C-Support Vector":
    clf = load_model("Resources/Models/SVC.joblib")
    st.markdown(svc_description)
elif model_selection == "XGBoost":
    clf = load_model("Resources/Models/xgb.joblib")
    st.markdown(XGBoost_description)


# TODO: This should be refactored at some point in the future.
if data_selection == "Upcoming Fights":
    st.header("Upcoming Fights")

    fight_detail = ufc_df[ufc_df["Matchup"] == upcoming_fight_matchup]
    blue_name = fight_detail["B_Name"].iloc[0]
    blue_age = fight_detail["B_Age"].iloc[0]
    blue_height = fight_detail["B_Height"].iloc[0]
    blue_weight = fight_detail["B_Weight"].iloc[0]
    blue_reach = fight_detail["B_Reach"].iloc[0]
    blue_stance = fight_detail["B_Stance"].iloc[0]
    red_name = fight_detail["R_Name"].iloc[0]
    red_age = fight_detail["R_Age"].iloc[0]
    red_height = fight_detail["R_Height"].iloc[0]
    red_weight = fight_detail["R_Weight"].iloc[0]
    red_reach = fight_detail["R_Reach"].iloc[0]
    red_stance = fight_detail["R_Stance"].iloc[0]

    # Predict fight.
    prediction, pred_proba = predict(fight_detail)

    # Display results of prediction, changing different formatting for each corner (red or blue)
    if prediction == 0:
        predicted_winner = blue_name
    elif prediction == 1:
        predicted_winner = red_name

    if predicted_winner == blue_name:
        winner = f'<b>The predicted winner of this fight, from <span style="color:#636EFA;">the blue corner</span>, is: <span style="color:#636EFA;font-size:20px">{predicted_winner}</span></b>.'
    elif predicted_winner == red_name:
        winner = f'<b>The predicted winner of this fight, from <span style="color:#EF563B;">the red corner</span>, is: <span style="color:#EF563B;font-size:20px">{predicted_winner}</span></b>.'
    st.markdown(winner, unsafe_allow_html=True)

    # Display probability of prediction.

    st.write(
        f"The predicted probability of the winner being {blue_name} is: {round(pred_proba[0][0] * 100, 2)}%"
    )
    st.write(
        f"The predicted probability of the winner being {red_name} is: {round(pred_proba[0][1] * 100, 2)}%"
    )

    # Display statistics of selected fighter.
    blue_header = f'<h1><b><span style="color:#636EFA">Blue</b></h1>'
    red_header = f'<h1><b><span style="color:#EF563B">Red</b></h1>'

    col1, col2 = st.columns(2)
    col1.markdown(blue_header, unsafe_allow_html=True)
    col1.subheader(f"{blue_name}")
    col1.write(f"Age: {blue_age}")
    col1.write(f"Height: {blue_height}")
    col1.write(f"Weight: {blue_weight}")
    col1.write(f"Reach: {blue_reach}")
    col1.write(f"Stance: {blue_stance}")
    col2.markdown(red_header, unsafe_allow_html=True)
    col2.subheader(f"{red_name}")
    col2.write(f"Age: {red_age}")
    col2.write(f"Height: {red_height}")
    col2.write(f"Weight: {red_weight}")
    col2.write(f"Reach: {red_reach}")
    col2.write(f"Stance: {red_stance}")

elif data_selection == "Fighter vs. Fighter":
    st.header("Fighter vs. Fighter")
    # Get blue & red fighters
    fighter_stats_blue = fighter_agg_stats[
        fighter_agg_stats["Name"] == blue_fighter
    ].reset_index()
    fighter_stats_red = fighter_agg_stats[
        fighter_agg_stats["Name"] == red_fighter
    ].reset_index()

    # Get the fighter stats
    blue_name = fighter_stats_blue["Name"]
    blue_age = fighter_stats_blue["Age"]
    blue_height = fighter_stats_blue["Height"]
    blue_weight = fighter_stats_blue["Weight"]
    blue_age_bucket = fighter_stats_blue["Age_Bucket"]
    blue_height_bucket = fighter_stats_blue["Height_Bucket"]
    blue_reach = fighter_stats_blue["Reach"]
    blue_stance = fighter_stats_blue["Stance"]
    blue_wins = fighter_stats_blue["Wins"]
    blue_losses = fighter_stats_blue["Losses"]
    blue_draws = fighter_stats_blue["Draws"]
    blue_no_contest = fighter_stats_blue["No_Contest"]
    blue_career_significant_strikes_landed_PM = fighter_stats_blue[
        "Career_Significant_Strikes_Landed_PM"
    ]
    blue_career_striking_accuracy = fighter_stats_blue["Career_Striking_Accuracy"]
    blue_career_significant_strike_defence = fighter_stats_blue[
        "Career_Significant_Strike_Defence"
    ]
    blue_career_takedown_average = fighter_stats_blue["Career_Takedown_Average"]
    blue_career_takedown_accuracy = fighter_stats_blue["Career_Takedown_Accuracy"]
    blue_career_takedown_defence = fighter_stats_blue["Career_Takedown_Defence"]
    blue_career_submission_average = fighter_stats_blue["Career_Submission_Average"]
    # blue_knockdowns = fighter_stats_blue["Knockdowns"]

    red_name = fighter_stats_red["Name"]
    red_age = fighter_stats_red["Age"]
    red_height = fighter_stats_red["Height"]
    red_weight = fighter_stats_red["Weight"]
    red_age_bucket = fighter_stats_red["Age_Bucket"]
    red_height_bucket = fighter_stats_red["Height_Bucket"]
    red_reach = fighter_stats_red["Reach"]
    red_stance = fighter_stats_red["Stance"]
    red_wins = fighter_stats_red["Wins"]
    red_losses = fighter_stats_red["Losses"]
    red_draws = fighter_stats_red["Draws"]
    red_no_contest = fighter_stats_red["No_Contest"]
    red_career_significant_strikes_landed_PM = fighter_stats_red[
        "Career_Significant_Strikes_Landed_PM"
    ]
    red_career_striking_accuracy = fighter_stats_red["Career_Striking_Accuracy"]
    red_career_significant_strike_defence = fighter_stats_red[
        "Career_Significant_Strike_Defence"
    ]
    red_career_takedown_average = fighter_stats_red["Career_Takedown_Average"]
    red_career_takedown_accuracy = fighter_stats_red["Career_Takedown_Accuracy"]
    red_career_takedown_defence = fighter_stats_red["Career_Takedown_Defence"]
    red_career_submission_average = fighter_stats_red["Career_Submission_Average"]
    # red_knockdowns = fighter_stats_red["Knockdowns"]

    fvf_df = pd.DataFrame(columns=ufc_df.columns)
    fvf_df["B_Name"] = blue_name
    fvf_df["B_Age"] = blue_age
    fvf_df["B_Height"] = blue_height
    fvf_df["B_Weight"] = blue_weight
    fvf_df["B_Reach"] = blue_reach
    fvf_df["B_Stance"] = blue_stance
    fvf_df["B_Age_Bucket"] = blue_age_bucket
    fvf_df["B_Height_Bucket"] = blue_height_bucket
    fvf_df["B_Wins"] = blue_wins
    fvf_df["B_Draws"] = blue_draws
    fvf_df["B_No_Contest"] = blue_no_contest
    fvf_df[
        "B_Career_Significant_Strikes_Landed_PM"
    ] = blue_career_significant_strikes_landed_PM
    fvf_df["B_Career_Striking_Accuracy"] = blue_career_striking_accuracy
    fvf_df["B_Career_Takedown_Average"] = blue_career_submission_average
    fvf_df["B_Career_Takedown_Accuracy"] = blue_career_takedown_accuracy
    fvf_df["B_Career_Takedown_Defence"] = blue_career_takedown_defence
    fvf_df["B_Career_Submission_Average"] = blue_career_submission_average
    # fvf_df["B_Knockdowns"] = blue_knockdowns

    fvf_df["R_Name"] = red_name
    fvf_df["R_Age"] = red_age
    fvf_df["R_Height"] = red_height
    fvf_df["R_Weight"] = red_weight
    fvf_df["R_Reach"] = red_reach
    fvf_df["R_Stance"] = red_stance
    fvf_df["R_Age_Bucket"] = red_age_bucket
    fvf_df["R_Height_Bucket"] = red_height_bucket
    fvf_df["R_Wins"] = red_wins
    fvf_df["R_Draws"] = red_draws
    fvf_df["R_No_Contest"] = red_no_contest
    fvf_df[
        "R_Career_Significant_Strikes_Landed_PM"
    ] = red_career_significant_strikes_landed_PM
    fvf_df["R_Career_Striking_Accuracy"] = red_career_striking_accuracy
    fvf_df["R_Career_Takedown_Average"] = red_career_submission_average
    fvf_df["R_Career_Takedown_Accuracy"] = red_career_takedown_accuracy
    fvf_df["R_Career_Takedown_Defence"] = red_career_takedown_defence
    fvf_df["R_Career_Submission_Average"] = red_career_submission_average
    # fvf_df["R_Knockdowns"] = red_knockdowns

    # Predict fight.
    prediction, pred_proba = predict(fvf_df)

    # Display results of prediction.
    if prediction == 1: # TODO: idk if this is 1 or 0
        predicted_winner = blue_name.iloc[0]
    elif prediction == 0:
        predicted_winner = red_name.iloc[0]

    if predicted_winner == blue_name.iloc[0]:
        winner = f'<b>The predicted winner of this fight, from <span style="color:#636EFA;">the blue corner</span>, is: <span style="color:#636EFA;font-size:20px">{predicted_winner}</span></b>.'
    elif predicted_winner == red_name.iloc[0]:
        winner = f'<b>The predicted winner of this fight, from <span style="color:#EF563B;">the red corner</span>, is: <span style="color:#EF563B;font-size:20px">{predicted_winner}</span></b>.'
    st.markdown(winner, unsafe_allow_html=True)

    # Display probability of prediction.
    st.write(
        f"The predicted probability of the winner being {blue_name.iloc[0]} is: {round(pred_proba[0][0] * 100, 2)}%"
    )
    st.write(
        f"The predicted probability of the winner being {red_name.iloc[0]} is: {round(pred_proba[0][1] * 100, 2)}%"
    )

    # Display statistics of selected fighter.
    blue_header = f'<h1><b><span style="color:#636EFA">Blue</b></h1>'
    red_header = f'<h1><b><span style="color:#EF563B">Red</b></h1>'

    col1, col2 = st.columns(2)
    col1.markdown(blue_header, unsafe_allow_html=True)
    col1.subheader(f"{blue_fighter}")
    col2.markdown(red_header, unsafe_allow_html=True)
    col2.subheader(f"{red_fighter}")

    # Display blue fighter stats.
    col1.write(f"Age: {blue_age.iloc[0]}")
    col1.write(f"Height: {blue_height.iloc[0]}")
    col1.write(f"Weight: {blue_weight.iloc[0]}")
    col1.write(f"Reach: {blue_reach.iloc[0]}")
    col1.write(f"Stance: {blue_stance.iloc[0]}")

    # Display red fighter stats.
    col2.write(f"Age: {red_age.iloc[0]}")
    col2.write(f"Height: {red_height.iloc[0]}")
    col2.write(f"Weight: {red_weight.iloc[0]}")
    col2.write(f"Reach: {red_reach.iloc[0]}")
    col2.write(f"Stance: {red_stance.iloc[0]}")


# elif data_selection == "Create your own fighter":
#     st.subheader("Create your own fighter")
#     # TODO: Predict fight.
#     # TODO: Display probability of prediction.
#     # TODO: Display statistics of selected fighter.

# Line break
st.markdown("---")

# Pie Charts
# ----- #
# `Win Rate By` Charts
if win_rate_by == "Age":
    st.header(f"Win Rate By {win_rate_by}")
    blue_wr_age = (
        chart_df[chart_df.Winner == 0]
        .groupby("B_Age_Bucket")
        .Winner.count()
        .reset_index()
    )
    red_wr_age = (
        chart_df[chart_df.Winner == 1]
        .groupby("R_Age_Bucket")
        .Winner.count()
        .reset_index()
    )

    fig = make_subplots(rows=2, cols=1, specs=[[{"type": "pie"}], [{"type": "pie"}]])

    fig.add_trace(
        go.Pie(
            values=red_wr_age["Winner"],
            labels=red_wr_age["R_Age_Bucket"],
            name="Red Corner",
            legendgroup="1",
            title="<b>Red Win Rate By Age</b>",
        ),
        row=1,
        col=1,
    )

    fig.add_trace(
        go.Pie(
            values=blue_wr_age["Winner"],
            labels=blue_wr_age["B_Age_Bucket"],
            name="Blue Corner",
            legendgroup="2",
            showlegend=True,
            title="<b>Blue Win Rate By Age</b>",
        ),
        row=2,
        col=1,
    )

    fig.update_layout(
        margin=dict(l=0, r=500, t=100, b=0),
        height=900,
        width=900,
        legend_tracegroupgap=450,
        legend=dict(title="<b>Age Range:</b> "),
        font=dict(size=18),
    )
    fig.update_traces(marker=dict(line=dict(color="#000000", width=1.25)))
    st.plotly_chart(fig)


elif win_rate_by == "Height":
    st.header(f"Win Rate By {win_rate_by}")
    blue_wr_height = (
        chart_df[chart_df.Winner == 0]
        .groupby("B_Height_Bucket")
        .Winner.count()
        .reset_index()
    )
    red_wr_height = (
        chart_df[chart_df.Winner == 1]
        .groupby("R_Height_Bucket")
        .Winner.count()
        .reset_index()
    )

    fig = make_subplots(rows=2, cols=1, specs=[[{"type": "pie"}], [{"type": "pie"}]])
    fig.add_trace(
        go.Pie(
            values=red_wr_height["Winner"],
            name="Red Corner",
            labels=red_wr_height["R_Height_Bucket"],
            title="<b>Red Win Rate By Height</b>",
        ),
        row=1,
        col=1,
    )
    fig.add_trace(
        go.Pie(
            values=blue_wr_height["Winner"],
            name="Blue Corner",
            labels=blue_wr_height["B_Height_Bucket"],
            title="<b>Blue Win Rate By Height</b>",
        ),
        row=2,
        col=1,
    )
    fig.update_layout(
        margin=dict(l=0, r=500, t=100, b=0),
        height=900,
        width=900,
        legend=dict(title="<b>Height Range (in.):</b> "),
        font_size=18,
    )
    fig.update_traces(marker=dict(line=dict(color="#000000", width=1.25)))
    st.plotly_chart(fig)

elif win_rate_by == "Weight Class":
    st.header(f"Win Rate By {win_rate_by}")
    blue_wr_weight = (
        chart_df[chart_df.Winner == 0]
        .groupby("Weight_Class")
        .Winner.count()
        .reset_index()
    )
    red_wr_weight = (
        chart_df[chart_df.Winner == 1]
        .groupby("Weight_Class")
        .Winner.count()
        .reset_index()
    )

    fig = make_subplots(rows=2, cols=1, specs=[[{"type": "pie"}], [{"type": "pie"}]])
    fig.add_trace(
        go.Pie(
            values=red_wr_weight["Winner"],
            labels=red_wr_weight["Weight_Class"],
            name="Red Corner",
            title="<b>Red Win Rate By Weight Class</b>",
        ),
        row=1,
        col=1,
    )

    fig.add_trace(
        go.Pie(
            values=blue_wr_weight["Winner"],
            labels=blue_wr_weight["Weight_Class"],
            name="Blue Corner",
            title="<b>Blue Win Rate By Weight Class</b>",
        ),
        row=2,
        col=1,
    )

    fig.update_layout(
        margin=dict(l=0, r=500, t=100, b=0),
        height=900,
        width=900,
        legend=dict(title="<b>Weight Classes:</b> ", x=1.1),
        font=dict(size=18),
        legend_font_size=18,
    )
    fig.update_traces(marker=dict(line=dict(color="#000000", width=0.5)))
    st.plotly_chart(fig)

elif win_rate_by == "Stance":

    st.header(f"Win Rate By {win_rate_by}")

    fig = make_subplots(rows=2, cols=1, specs=[[{"type": "pie"}], [{"type": "pie"}]])

    blue_wr_stance = (
        chart_df[chart_df.Winner == 0]
        .groupby("B_Stance")
        .Winner.count()
        .reset_index()
    )
    red_wr_stance = (
        chart_df[chart_df.Winner == 1]
        .groupby("R_Stance")
        .Winner.count()
        .reset_index()
    )
    fig.append_trace(
        go.Pie(
            values=red_wr_stance["Winner"],
            labels=red_wr_stance["R_Stance"],
            name="Red Corner",
            title="<b>Red Win Rate By Stance</b>",
        ),
        row=1,
        col=1,
    )

    fig.append_trace(
        go.Pie(
            values=blue_wr_stance["Winner"],
            labels=blue_wr_stance["B_Stance"],
            name="Blue Corner",
            title="<b>Blue Win Rate By Stance</b>",
        ),
        row=2,
        col=1,
    )

    fig.update_layout(
        margin=dict(l=0, r=500, t=100, b=0),
        height=900,
        width=900,
        legend=dict(title="<b>Fight Stance:</b> "),
        font=dict(size=18),
    )
    fig.update_traces(marker=dict(line=dict(color="#000000", width=1.25)))
    st.plotly_chart(fig)