-- Create ufc_table
CREATE TABLE ufc_table(
   FIELD1                                               INTEGER  NOT NULL PRIMARY KEY 
  ,Event_Date                                           DATE  NOT NULL
  ,Weight_Class                                         VARCHAR(21) NOT NULL
  ,Max_Rounds                                           INTEGER  NOT NULL
  ,Ending_Round                                         INTEGER  NOT NULL
  ,Winner                                               VARCHAR(4) NOT NULL
  ,Win_By                                               VARCHAR(6)
  ,B_Name                                               VARCHAR(25) NOT NULL
  ,B_Age                                                INTEGER  NOT NULL
  ,B_Height                                             INTEGER  NOT NULL
  ,B_Weight                                             INTEGER  NOT NULL
  ,B_Reach                                              INTEGER 
  ,B_Stance                                             VARCHAR(11)
  ,B_Wins                                               INTEGER  NOT NULL
  ,B_Losses                                             INTEGER  NOT NULL
  ,B_Draws                                              INTEGER  NOT NULL
  ,B_No_Contest                                         INTEGER 
  ,B_Career_Significant_Strikes_Landed_PM               NUMERIC(5,2) NOT NULL
  ,B_Career_Striking_Accuracy                           INTEGER  NOT NULL
  ,B_Career_Significant_Strike_Defence                  INTEGER  NOT NULL
  ,B_Career_Takedown_Average                            NUMERIC(5,2) NOT NULL
  ,B_Career_Takedown_Accuracy                           INTEGER  NOT NULL
  ,B_Career_Takedown_Defence                            INTEGER  NOT NULL
  ,B_Career_Submission_Average                          NUMERIC(4,1) NOT NULL
  ,B_Knockdowns                                         INTEGER  NOT NULL
  ,B_Significant_Strikes_Landed                         INTEGER  NOT NULL
  ,B_Significant_Strikes_Attempted                      INTEGER  NOT NULL
  ,B_Significant_Strike_Perc                            INTEGER 
  ,B_Significant_Strikes_Distance_Landed                INTEGER  NOT NULL
  ,B_Significant_Strikes_Distance_Attempted             INTEGER  NOT NULL
  ,B_Significant_Strikes_Clinch_Landed                  INTEGER  NOT NULL
  ,B_Significant_Strikes_Clinch_Attempted               INTEGER  NOT NULL
  ,B_Significant_Strikes_Ground_Landed                  INTEGER  NOT NULL
  ,B_Significant_Strikes_Ground_Attempted               INTEGER  NOT NULL
  ,B_Head_Significant_Strikes_Attempted                 INTEGER  NOT NULL
  ,B_Head_Significant_Strikes_Landed                    INTEGER  NOT NULL
  ,B_Body_Significant_Strikes_Attempted                 INTEGER  NOT NULL
  ,B_Body_Significant_Strikes_Landed                    INTEGER  NOT NULL
  ,B_Leg_Significant_Strikes_Attempted                  INTEGER  NOT NULL
  ,B_Leg_Significant_Strikes_Landed                     INTEGER  NOT NULL
  ,B_Total_Strikes_Attempted                            INTEGER  NOT NULL
  ,B_Total_Strikes_Landed                               INTEGER  NOT NULL
  ,B_Takedowns_Attempted                                INTEGER  NOT NULL
  ,B_Takedowns_Landed                                   INTEGER  NOT NULL
  ,B_Takedown_Perc                                      INTEGER 
  ,B_Submission_Attempts                                INTEGER  NOT NULL
  ,B_Grappling_Reversals                                INTEGER  NOT NULL
  ,B_Grappling_Control_Time                             VARCHAR(5) NOT NULL
  ,B_Round_One_Knockdowns                               INTEGER  NOT NULL
  ,B_Round_One_Significant_Strikes_Landed               INTEGER  NOT NULL
  ,B_Round_One_Significant_Strikes_Attempted            INTEGER  NOT NULL
  ,B_Round_One_Significant_Strike_Perc                  INTEGER 
  ,B_Round_One_Significant_Strikes_Distance_Landed      INTEGER  NOT NULL
  ,B_Round_One_Significant_Strikes_Distance_Attempted   INTEGER  NOT NULL
  ,B_Round_One_Significant_Strikes_Clinch_Landed        INTEGER  NOT NULL
  ,B_Round_One_Significant_Strikes_Clinch_Attempted     INTEGER  NOT NULL
  ,B_Round_One_Significant_Strikes_Ground_Landed        INTEGER  NOT NULL
  ,B_Round_One_Significant_Strikes_Ground_Attempted     INTEGER  NOT NULL
  ,B_Round_One_Head_Significant_Strikes_Attempted       INTEGER  NOT NULL
  ,B_Round_One_Head_Significant_Strikes_Landed          INTEGER  NOT NULL
  ,B_Round_One_Body_Significant_Strikes_Attempted       INTEGER  NOT NULL
  ,B_Round_One_Body_Significant_Strikes_Landed          INTEGER  NOT NULL
  ,B_Round_One_Leg_Significant_Strikes_Attempted        INTEGER  NOT NULL
  ,B_Round_One_Leg_Significant_Strikes_Landed           INTEGER  NOT NULL
  ,B_Round_One_Total_Strikes_Attempted                  INTEGER  NOT NULL
  ,B_Round_One_Total_Strikes_Landed                     INTEGER  NOT NULL
  ,B_Round_One_Takedowns_Attempted                      INTEGER  NOT NULL
  ,B_Round_One_Takedowns_Landed                         INTEGER  NOT NULL
  ,B_Round_One_Takedown_Perc                            INTEGER 
  ,B_Round_One_Submission_Attempts                      INTEGER  NOT NULL
  ,B_Round_One_Grappling_Reversals                      INTEGER  NOT NULL
  ,B_Round_One_Grappling_Control_Time                   VARCHAR(4) NOT NULL
  ,B_Round_Two_Knockdowns                               INTEGER 
  ,B_Round_Two_Significant_Strikes_Landed               INTEGER 
  ,B_Round_Two_Significant_Strikes_Attempted            INTEGER 
  ,B_Round_Two_Significant_Strike_Perc                  INTEGER 
  ,B_Round_Two_Significant_Strikes_Distance_Landed      INTEGER 
  ,B_Round_Two_Significant_Strikes_Distance_Attempted   INTEGER 
  ,B_Round_Two_Significant_Strikes_Clinch_Landed        INTEGER 
  ,B_Round_Two_Significant_Strikes_Clinch_Attempted     INTEGER 
  ,B_Round_Two_Significant_Strikes_Ground_Landed        INTEGER 
  ,B_Round_Two_Significant_Strikes_Ground_Attempted     INTEGER 
  ,B_Round_Two_Head_Significant_Strikes_Attempted       INTEGER 
  ,B_Round_Two_Head_Significant_Strikes_Landed          INTEGER 
  ,B_Round_Two_Body_Significant_Strikes_Attempted       INTEGER 
  ,B_Round_Two_Body_Significant_Strikes_Landed          INTEGER 
  ,B_Round_Two_Leg_Significant_Strikes_Attempted        INTEGER 
  ,B_Round_Two_Leg_Significant_Strikes_Landed           INTEGER 
  ,B_Round_Two_Total_Strikes_Attempted                  INTEGER 
  ,B_Round_Two_Total_Strikes_Landed                     INTEGER 
  ,B_Round_Two_Takedowns_Attempted                      INTEGER 
  ,B_Round_Two_Takedowns_Landed                         INTEGER 
  ,B_Round_Two_Takedown_Perc                            INTEGER 
  ,B_Round_Two_Submission_Attempts                      INTEGER 
  ,B_Round_Two_Grappling_Reversals                      INTEGER 
  ,B_Round_Two_Grappling_Control_Time                   VARCHAR(4)
  ,B_Round_Three_Knockdowns                             INTEGER 
  ,B_Round_Three_Significant_Strikes_Landed             INTEGER 
  ,B_Round_Three_Significant_Strikes_Attempted          INTEGER 
  ,B_Round_Three_Significant_Strike_Perc                INTEGER 
  ,B_Round_Three_Significant_Strikes_Distance_Landed    INTEGER 
  ,B_Round_Three_Significant_Strikes_Distance_Attempted INTEGER 
  ,B_Round_Three_Significant_Strikes_Clinch_Landed      INTEGER 
  ,B_Round_Three_Significant_Strikes_Clinch_Attempted   INTEGER 
  ,B_Round_Three_Significant_Strikes_Ground_Landed      INTEGER 
  ,B_Round_Three_Significant_Strikes_Ground_Attempted   INTEGER 
  ,B_Round_Three_Head_Significant_Strikes_Attempted     INTEGER 
  ,B_Round_Three_Head_Significant_Strikes_Landed        INTEGER 
  ,B_Round_Three_Body_Significant_Strikes_Attempted     INTEGER 
  ,B_Round_Three_Body_Significant_Strikes_Landed        INTEGER 
  ,B_Round_Three_Leg_Significant_Strikes_Attempted      INTEGER 
  ,B_Round_Three_Leg_Significant_Strikes_Landed         INTEGER 
  ,B_Round_Three_Total_Strikes_Attempted                INTEGER 
  ,B_Round_Three_Total_Strikes_Landed                   INTEGER 
  ,B_Round_Three_Takedowns_Attempted                    INTEGER 
  ,B_Round_Three_Takedowns_Landed                       INTEGER 
  ,B_Round_Three_Takedown_Perc                          INTEGER 
  ,B_Round_Three_Submission_Attempts                    INTEGER 
  ,B_Round_Three_Grappling_Reversals                    INTEGER 
  ,B_Round_Three_Grappling_Control_Time                 VARCHAR(4)
  ,B_Round_Four_Knockdowns                              INTEGER 
  ,B_Round_Four_Significant_Strikes_Landed              INTEGER 
  ,B_Round_Four_Significant_Strikes_Attempted           INTEGER 
  ,B_Round_Four_Significant_Strike_Perc                 NUMERIC(4,1)
  ,B_Round_Four_Significant_Strikes_Distance_Landed     INTEGER 
  ,B_Round_Four_Significant_Strikes_Distance_Attempted  INTEGER 
  ,B_Round_Four_Significant_Strikes_Clinch_Landed       INTEGER 
  ,B_Round_Four_Significant_Strikes_Clinch_Attempted    INTEGER 
  ,B_Round_Four_Significant_Strikes_Ground_Landed       INTEGER 
  ,B_Round_Four_Significant_Strikes_Ground_Attempted    INTEGER 
  ,B_Round_Four_Head_Significant_Strikes_Attempted      INTEGER 
  ,B_Round_Four_Head_Significant_Strikes_Landed         INTEGER 
  ,B_Round_Four_Body_Significant_Strikes_Attempted      INTEGER 
  ,B_Round_Four_Body_Significant_Strikes_Landed         INTEGER 
  ,B_Round_Four_Leg_Significant_Strikes_Attempted       INTEGER 
  ,B_Round_Four_Leg_Significant_Strikes_Landed          INTEGER 
  ,B_Round_Four_Total_Strikes_Attempted                 INTEGER 
  ,B_Round_Four_Total_Strikes_Landed                    INTEGER 
  ,B_Round_Four_Takedowns_Attempted                     INTEGER 
  ,B_Round_Four_Takedowns_Landed                        INTEGER 
  ,B_Round_Four_Takedown_Perc                           INTEGER 
  ,B_Round_Four_Submission_Attempts                     INTEGER 
  ,B_Round_Four_Grappling_Reversals                     INTEGER 
  ,B_Round_Four_Grappling_Control_Time                  VARCHAR(4)
  ,B_Round_Five_Knockdowns                              INTEGER 
  ,B_Round_Five_Significant_Strikes_Landed              INTEGER 
  ,B_Round_Five_Significant_Strikes_Attempted           INTEGER 
  ,B_Round_Five_Significant_Strike_Perc                 NUMERIC(4,1)
  ,B_Round_Five_Significant_Strikes_Distance_Landed     INTEGER 
  ,B_Round_Five_Significant_Strikes_Distance_Attempted  INTEGER 
  ,B_Round_Five_Significant_Strikes_Clinch_Landed       INTEGER 
  ,B_Round_Five_Significant_Strikes_Clinch_Attempted    INTEGER 
  ,B_Round_Five_Significant_Strikes_Ground_Landed       INTEGER 
  ,B_Round_Five_Significant_Strikes_Ground_Attempted    INTEGER 
  ,B_Round_Five_Head_Significant_Strikes_Attempted      INTEGER 
  ,B_Round_Five_Head_Significant_Strikes_Landed         INTEGER 
  ,B_Round_Five_Body_Significant_Strikes_Attempted      INTEGER 
  ,B_Round_Five_Body_Significant_Strikes_Landed         INTEGER 
  ,B_Round_Five_Leg_Significant_Strikes_Attempted       INTEGER 
  ,B_Round_Five_Leg_Significant_Strikes_Landed          INTEGER 
  ,B_Round_Five_Total_Strikes_Attempted                 INTEGER 
  ,B_Round_Five_Total_Strikes_Landed                    INTEGER 
  ,B_Round_Five_Takedowns_Attempted                     INTEGER 
  ,B_Round_Five_Takedowns_Landed                        INTEGER 
  ,B_Round_Five_Takedown_Perc                           INTEGER 
  ,B_Round_Five_Submission_Attempts                     INTEGER 
  ,B_Round_Five_Grappling_Reversals                     INTEGER 
  ,B_Round_Five_Grappling_Control_Time                  VARCHAR(4)
  ,R_Name                                               VARCHAR(25) NOT NULL
  ,R_Age                                                INTEGER  NOT NULL
  ,R_Height                                             INTEGER  NOT NULL
  ,R_Weight                                             INTEGER  NOT NULL
  ,R_Reach                                              INTEGER 
  ,R_Stance                                             VARCHAR(11)
  ,R_Wins                                               INTEGER  NOT NULL
  ,R_Losses                                             INTEGER  NOT NULL
  ,R_Draws                                              INTEGER  NOT NULL
  ,R_No_Contest                                         INTEGER 
  ,R_Career_Significant_Strikes_Landed_PM               NUMERIC(5,2) NOT NULL
  ,R_Career_Striking_Accuracy                           INTEGER  NOT NULL
  ,R_Career_Significant_Strike_Defence                  INTEGER  NOT NULL
  ,R_Career_Takedown_Average                            NUMERIC(5,2) NOT NULL
  ,R_Career_Takedown_Accuracy                           INTEGER  NOT NULL
  ,R_Career_Takedown_Defence                            INTEGER  NOT NULL
  ,R_Career_Submission_Average                          NUMERIC(4,1) NOT NULL
  ,R_Knockdowns                                         INTEGER  NOT NULL
  ,R_Significant_Strikes_Landed                         INTEGER  NOT NULL
  ,R_Significant_Strikes_Attempted                      INTEGER  NOT NULL
  ,R_Significant_Strike_Perc                            INTEGER 
  ,R_Significant_Strikes_Distance_Landed                INTEGER  NOT NULL
  ,R_Significant_Strikes_Distance_Attempted             INTEGER  NOT NULL
  ,R_Significant_Strikes_Clinch_Landed                  INTEGER  NOT NULL
  ,R_Significant_Strikes_Clinch_Attempted               INTEGER  NOT NULL
  ,R_Significant_Strikes_Ground_Landed                  INTEGER  NOT NULL
  ,R_Significant_Strikes_Ground_Attempted               INTEGER  NOT NULL
  ,R_Head_Significant_Strikes_Attempted                 INTEGER  NOT NULL
  ,R_Head_Significant_Strikes_Landed                    INTEGER  NOT NULL
  ,R_Body_Significant_Strikes_Attempted                 INTEGER  NOT NULL
  ,R_Body_Significant_Strikes_Landed                    INTEGER  NOT NULL
  ,R_Leg_Significant_Strikes_Attempted                  INTEGER  NOT NULL
  ,R_Leg_Significant_Strikes_Landed                     INTEGER  NOT NULL
  ,R_Total_Strikes_Attempted                            INTEGER  NOT NULL
  ,R_Total_Strikes_Landed                               INTEGER  NOT NULL
  ,R_Takedowns_Attempted                                INTEGER  NOT NULL
  ,R_Takedowns_Landed                                   INTEGER  NOT NULL
  ,R_Takedown_Perc                                      INTEGER 
  ,R_Submission_Attempts                                INTEGER  NOT NULL
  ,R_Grappling_Reversals                                INTEGER  NOT NULL
  ,R_Grappling_Control_Time                             VARCHAR(5) NOT NULL
  ,R_Round_One_Knockdowns                               INTEGER  NOT NULL
  ,R_Round_One_Significant_Strikes_Landed               INTEGER  NOT NULL
  ,R_Round_One_Significant_Strikes_Attempted            INTEGER  NOT NULL
  ,R_Round_One_Significant_Strike_Perc                  INTEGER 
  ,R_Round_One_Significant_Strikes_Distance_Attempted   INTEGER  NOT NULL
  ,R_Round_One_Significant_Strikes_Distance_Landed      INTEGER  NOT NULL
  ,R_Round_One_Significant_Strikes_Clinch_Attempted     INTEGER  NOT NULL
  ,R_Round_One_Significant_Strikes_Clinch_Landed        INTEGER  NOT NULL
  ,R_Round_One_Significant_Strikes_Ground_Attempted     INTEGER  NOT NULL
  ,R_Round_One_Significant_Strikes_Ground_Landed        INTEGER  NOT NULL
  ,R_Round_One_Head_Significant_Strikes_Attempted       INTEGER  NOT NULL
  ,R_Round_One_Head_Significant_Strikes_Landed          INTEGER  NOT NULL
  ,R_Round_One_Body_Significant_Strikes_Attempted       INTEGER  NOT NULL
  ,R_Round_One_Body_Significant_Strikes_Landed          INTEGER  NOT NULL
  ,R_Round_One_Leg_Significant_Strikes_Attempted        INTEGER  NOT NULL
  ,R_Round_One_Leg_Significant_Strikes_Landed           INTEGER  NOT NULL
  ,R_Round_One_Total_Strikes_Attempted                  INTEGER  NOT NULL
  ,R_Round_One_Total_Strikes_Landed                     INTEGER  NOT NULL
  ,R_Round_One_Takedowns_Attempted                      INTEGER  NOT NULL
  ,R_Round_One_Takedowns_Landed                         INTEGER  NOT NULL
  ,R_Round_One_Takedown_Perc                            INTEGER 
  ,R_Round_One_Submission_Attempts                      INTEGER  NOT NULL
  ,R_Round_One_Grappling_Reversals                      INTEGER  NOT NULL
  ,R_Round_One_Grappling_Control_Time                   VARCHAR(4) NOT NULL
  ,R_Round_Two_Knockdowns                               INTEGER 
  ,R_Round_Two_Significant_Strikes_Landed               INTEGER 
  ,R_Round_Two_Significant_Strikes_Attempted            INTEGER 
  ,R_Round_Two_Significant_Strike_Perc                  INTEGER 
  ,R_Round_Two_Significant_Strikes_Distance_Attempted   INTEGER 
  ,R_Round_Two_Significant_Strikes_Distance_Landed      INTEGER 
  ,R_Round_Two_Significant_Strikes_Clinch_Attempted     INTEGER 
  ,R_Round_Two_Significant_Strikes_Clinch_Landed        INTEGER 
  ,R_Round_Two_Significant_Strikes_Ground_Attempted     INTEGER 
  ,R_Round_Two_Significant_Strikes_Ground_Landed        INTEGER 
  ,R_Round_Two_Head_Significant_Strikes_Attempted       INTEGER 
  ,R_Round_Two_Head_Significant_Strikes_Landed          INTEGER 
  ,R_Round_Two_Body_Significant_Strikes_Attempted       INTEGER 
  ,R_Round_Two_Body_Significant_Strikes_Landed          INTEGER 
  ,R_Round_Two_Leg_Significant_Strikes_Attempted        INTEGER 
  ,R_Round_Two_Leg_Significant_Strikes_Landed           INTEGER 
  ,R_Round_Two_Total_Strikes_Attempted                  INTEGER 
  ,R_Round_Two_Total_Strikes_Landed                     INTEGER 
  ,R_Round_Two_Takedowns_Attempted                      INTEGER 
  ,R_Round_Two_Takedowns_Landed                         INTEGER 
  ,R_Round_Two_Takedown_Perc                            INTEGER 
  ,R_Round_Two_Submission_Attempts                      INTEGER 
  ,R_Round_Two_Grappling_Reversals                      INTEGER 
  ,R_Round_Two_Grappling_Control_Time                   VARCHAR(4)
  ,R_Round_Three_Knockdowns                             INTEGER 
  ,R_Round_Three_Significant_Strikes_Landed             INTEGER 
  ,R_Round_Three_Significant_Strikes_Attempted          INTEGER 
  ,R_Round_Three_Significant_Strike_Perc                INTEGER 
  ,R_Round_Three_Significant_Strikes_Distance_Attempted INTEGER 
  ,R_Round_Three_Significant_Strikes_Distance_Landed    INTEGER 
  ,R_Round_Three_Significant_Strikes_Clinch_Attempted   INTEGER 
  ,R_Round_Three_Significant_Strikes_Clinch_Landed      INTEGER 
  ,R_Round_Three_Significant_Strikes_Ground_Attempted   INTEGER 
  ,R_Round_Three_Significant_Strikes_Ground_Landed      INTEGER 
  ,R_Round_Three_Head_Significant_Strikes_Attempted     INTEGER 
  ,R_Round_Three_Head_Significant_Strikes_Landed        INTEGER 
  ,R_Round_Three_Body_Significant_Strikes_Attempted     INTEGER 
  ,R_Round_Three_Body_Significant_Strikes_Landed        INTEGER 
  ,R_Round_Three_Leg_Significant_Strikes_Attempted      INTEGER 
  ,R_Round_Three_Leg_Significant_Strikes_Landed         INTEGER 
  ,R_Round_Three_Total_Strikes_Attempted                INTEGER 
  ,R_Round_Three_Total_Strikes_Landed                   INTEGER 
  ,R_Round_Three_Takedowns_Attempted                    INTEGER 
  ,R_Round_Three_Takedowns_Landed                       INTEGER 
  ,R_Round_Three_Takedown_Perc                          INTEGER 
  ,R_Round_Three_Submission_Attempts                    INTEGER 
  ,R_Round_Three_Grappling_Reversals                    INTEGER 
  ,R_Round_Three_Grappling_Control_Time                 VARCHAR(4)
  ,R_Round_Four_Knockdowns                              INTEGER 
  ,R_Round_Four_Significant_Strikes_Landed              INTEGER 
  ,R_Round_Four_Significant_Strikes_Attempted           INTEGER 
  ,R_Round_Four_Significant_Strike_Perc                 INTEGER 
  ,R_Round_Four_Significant_Strikes_Distance_Attempted  INTEGER 
  ,R_Round_Four_Significant_Strikes_Distance_Landed     INTEGER 
  ,R_Round_Four_Significant_Strikes_Clinch_Attempted    INTEGER 
  ,R_Round_Four_Significant_Strikes_Clinch_Landed       INTEGER 
  ,R_Round_Four_Significant_Strikes_Ground_Attempted    INTEGER 
  ,R_Round_Four_Significant_Strikes_Ground_Landed       INTEGER 
  ,R_Round_Four_Head_Significant_Strikes_Attempted      INTEGER 
  ,R_Round_Four_Head_Significant_Strikes_Landed         INTEGER 
  ,R_Round_Four_Body_Significant_Strikes_Attempted      INTEGER 
  ,R_Round_Four_Body_Significant_Strikes_Landed         INTEGER 
  ,R_Round_Four_Leg_Significant_Strikes_Attempted       INTEGER 
  ,R_Round_Four_Leg_Significant_Strikes_Landed          INTEGER 
  ,R_Round_Four_Total_Strikes_Attempted                 INTEGER 
  ,R_Round_Four_Total_Strikes_Landed                    INTEGER 
  ,R_Round_Four_Takedowns_Attempted                     INTEGER 
  ,R_Round_Four_Takedowns_Landed                        INTEGER 
  ,R_Round_Four_Takedown_Perc                           INTEGER 
  ,R_Round_Four_Submission_Attempts                     INTEGER 
  ,R_Round_Four_Grappling_Reversals                     INTEGER 
  ,R_Round_Four_Grappling_Control_Time                  VARCHAR(4)
  ,R_Round_Five_Knockdowns                              INTEGER 
  ,R_Round_Five_Significant_Strikes_Landed              INTEGER 
  ,R_Round_Five_Significant_Strikes_Attempted           INTEGER 
  ,R_Round_Five_Significant_Strike_Perc                 NUMERIC(5,1)
  ,R_Round_Five_Significant_Strikes_Distance_Attempted  INTEGER 
  ,R_Round_Five_Significant_Strikes_Distance_Landed     INTEGER 
  ,R_Round_Five_Significant_Strikes_Clinch_Attempted    INTEGER 
  ,R_Round_Five_Significant_Strikes_Clinch_Landed       INTEGER 
  ,R_Round_Five_Significant_Strikes_Ground_Attempted    INTEGER 
  ,R_Round_Five_Significant_Strikes_Ground_Landed       INTEGER 
  ,R_Round_Five_Head_Significant_Strikes_Attempted      INTEGER 
  ,R_Round_Five_Head_Significant_Strikes_Landed         INTEGER 
  ,R_Round_Five_Body_Significant_Strikes_Attempted      INTEGER 
  ,R_Round_Five_Body_Significant_Strikes_Landed         INTEGER 
  ,R_Round_Five_Leg_Significant_Strikes_Attempted       INTEGER 
  ,R_Round_Five_Leg_Significant_Strikes_Landed          INTEGER 
  ,R_Round_Five_Total_Strikes_Attempted                 INTEGER 
  ,R_Round_Five_Total_Strikes_Landed                    INTEGER 
  ,R_Round_Five_Takedowns_Attempted                     INTEGER 
  ,R_Round_Five_Takedowns_Landed                        INTEGER 
  ,R_Round_Five_Takedown_Perc                           INTEGER 
  ,R_Round_Five_Submission_Attempts                     INTEGER 
  ,R_Round_Five_Grappling_Reversals                     INTEGER 
  ,R_Round_Five_Grappling_Control_Time                  VARCHAR(4)
  ,R_Age_Bucket                                         VARCHAR(14) NOT NULL
  ,B_Age_Bucket                                         VARCHAR(14) NOT NULL
  ,R_Height_Bucket                                      VARCHAR(14) NOT NULL
  ,B_Height_Bucket                                      VARCHAR(14) NOT NULL
  ,Gender                                               BIT  NOT NULL
);


-- Display ufc_table
SELECT * FROM ufc_table
ORDER BY field1 ASC;

-- Create fighter_stats table
CREATE TABLE fighter_stats (
	weight_class VARCHAR,
	Gender VARCHAR,
	B_Name VARCHAR,
	B_Stance VARCHAR,
	B_Age_Bucket,
	B_Height_Bucket,
	B_Age INT,
	B_Height INT,
	B_Weight INT,
	B_Reach VARCHAR,
	B_Wins INT,
	B_Losses INT,
	B_Draws INT,
	B_No_Contest INT,
	B_Career_Significant_Strikes_Landed_PM INT,
	B_Career_Striking_Accuracy INT,
	B_Career_Significant_Strike_Defence INT,
	B_Career_Takedown_Average INT,
	B_Career_Takedown_Accuracy INT,
	B_Career_Takedown_Defence INT,
	B_Career_Submission_Average INT,
	B_Knockdowns INT,
	R_Name,
	R_Stance,
	R_Age_Bucket,
	R_Height_Bucket,
	R_Age,
	R_Height,
	R_Weight,
	R_Reach,
	R_Wins,
	R_Losses,
	R_Draws,
	R_No_Contest,
	R_Career_Significant_Strikes_Landed_PM,
	R_Career_Striking_Accuracy,
	R_Career_Significant_Strike_Defence,
	R_Career_Takedown_Average,
	R_Career_Takedown_Accuracy,
	R_Career_Takedown_Defence,
	R_Career_Submission_Average,
	R_Knockdowns
	PRIMARY KEY B_Name, R_Name
);

-- Drop fighter_stats table
DROP TABLE fighter_stats;

-- Display fighter_stats table
SELECT * FROM fighter_stats;


-- Create fight_stats table
CREATE TABLE fight_stats (
    B_Knockdowns INT,
    B_Significant_Strikes_Landed INT,
    B_Significant_Strikes_Attempted INT,
    B_Significant_Strike_Perc VARCHAR,
    B_Significant_Strikes_Distance_Landed INT,
    B_Significant_Strikes_Distance_Attempted INT,
    B_Significant_Strikes_Clinch_Landed INT,
    B_Significant_Strikes_Clinch_Attempted INT,
    B_Significant_Strikes_Ground_Landed INT,
    B_Significant_Strikes_Ground_Attempted INT,
    B_Head_Significant_Strikes_Attempted INT,
    B_Head_Significant_Strikes_Landed INT,
    B_Body_Significant_Strikes_Attempted INT,
    B_Body_Significant_Strikes_Landed INT,
    B_Leg_Significant_Strikes_Attempted INT,
    B_Leg_Significant_Strikes_Landed INT,
    B_Total_Strikes_Attempted INT,
    B_Total_Strikes_Landed INT,
    B_Takedowns_Attempted INT,
    B_Takedowns_Landed INT,
    B_Takedown_Perc VARCHAR,
    B_Submission_Attempts INT,
    B_Grappling_Reversals INT,
    B_Round_One_Knockdowns INT,
    B_Round_One_Significant_Strikes_Landed INT,
    B_Round_One_Significant_Strikes_Attempted INT,
    B_Round_One_Significant_Strike_Perc VARCHAR,
    B_Round_One_Significant_Strikes_Distance_Landed INT,
    B_Round_One_Significant_Strikes_Distance_Attempted INT,
    B_Round_One_Significant_Strikes_Clinch_Landed INT,
    B_Round_One_Significant_Strikes_Clinch_Attempted INT,
    B_Round_One_Significant_Strikes_Ground_Landed INT,
    B_Round_One_Significant_Strikes_Ground_Attempted INT,
    B_Round_One_Head_Significant_Strikes_Attempted INT,
    B_Round_One_Head_Significant_Strikes_Landed INT,
    B_Round_One_Body_Significant_Strikes_Attempted INT,
    B_Round_One_Body_Significant_Strikes_Landed INT,
    B_Round_One_Leg_Significant_Strikes_Attempted INT,
    B_Round_One_Leg_Significant_Strikes_Landed INT,
    B_Round_One_Total_Strikes_Attempted INT,
    B_Round_One_Total_Strikes_Landed INT,
    B_Round_One_Takedowns_Attempted INT,
    B_Round_One_Takedowns_Landed INT,
    B_Round_One_Takedown_Perc VARCHAR,
    B_Round_One_Submission_Attempts INT,
    B_Round_One_Grappling_Reversals INT,
    B_Round_Two_Knockdowns INT,
    B_Round_Two_Significant_Strikes_Landed INT,
    B_Round_Two_Significant_Strikes_Attempted INT,
    B_Round_Two_Significant_Strike_Perc VARCHAR,
    B_Round_Two_Significant_Strikes_Distance_Landed INT,
    B_Round_Two_Significant_Strikes_Distance_Attempted INT,
    B_Round_Two_Significant_Strikes_Clinch_Landed INT,
    B_Round_Two_Significant_Strikes_Clinch_Attempted INT,
    B_Round_Two_Significant_Strikes_Ground_Landed INT,
    B_Round_Two_Significant_Strikes_Ground_Attempted INT,
    B_Round_Two_Head_Significant_Strikes_Attempted INT,
    B_Round_Two_Head_Significant_Strikes_Landed INT,
    B_Round_Two_Body_Significant_Strikes_Attempted INT,
    B_Round_Two_Body_Significant_Strikes_Landed INT,
    B_Round_Two_Leg_Significant_Strikes_Attempted INT,
    B_Round_Two_Leg_Significant_Strikes_Landed INT,
    B_Round_Two_Total_Strikes_Attempted INT,
    B_Round_Two_Total_Strikes_Landed INT,
    B_Round_Two_Takedowns_Attempted INT,
    B_Round_Two_Takedowns_Landed INT,
    B_Round_Two_Takedown_Perc VARCHAR,
    B_Round_Two_Submission_Attempts INT,
    B_Round_Two_Grappling_Reversals INT,
    B_Round_Three_Knockdowns INT,
    B_Round_Three_Significant_Strikes_Landed INT,
    B_Round_Three_Significant_Strikes_Attempted INT,
    B_Round_Three_Significant_Strike_Perc VARCHAR,
    B_Round_Three_Significant_Strikes_Distance_Landed INT,
    B_Round_Three_Significant_Strikes_Distance_Attempted INT,
    B_Round_Three_Significant_Strikes_Clinch_Landed INT,
    B_Round_Three_Significant_Strikes_Clinch_Attempted INT,
    B_Round_Three_Significant_Strikes_Ground_Landed INT,
    B_Round_Three_Significant_Strikes_Ground_Attempted INT,
    B_Round_Three_Head_Significant_Strikes_Attempted INT,
    B_Round_Three_Head_Significant_Strikes_Landed INT,
    B_Round_Three_Body_Significant_Strikes_Attempted INT,
    B_Round_Three_Body_Significant_Strikes_Landed INT,
    B_Round_Three_Leg_Significant_Strikes_Attempted INT,
    B_Round_Three_Leg_Significant_Strikes_Landed INT,
    B_Round_Three_Total_Strikes_Attempted INT,
    B_Round_Three_Total_Strikes_Landed INT,
    B_Round_Three_Takedowns_Attempted INT,
    B_Round_Three_Takedowns_Landed INT,
    B_Round_Three_Takedown_Perc VARCHAR,
    B_Round_Three_Submission_Attempts INT,
    B_Round_Three_Grappling_Reversals INT,
    B_Round_Four_Knockdowns INT,
    B_Round_Four_Significant_Strikes_Landed INT,
    B_Round_Four_Significant_Strikes_Attempted INT,
    B_Round_Four_Significant_Strike_Perc VARCHAR,
    B_Round_Four_Significant_Strikes_Distance_Landed INT,
    B_Round_Four_Significant_Strikes_Distance_Attempted INT,
    B_Round_Four_Significant_Strikes_Clinch_Landed INT,
    B_Round_Four_Significant_Strikes_Clinch_Attempted INT,
    B_Round_Four_Significant_Strikes_Ground_Landed INT,
    B_Round_Four_Significant_Strikes_Ground_Attempted INT,
    B_Round_Four_Head_Significant_Strikes_Attempted INT,
    B_Round_Four_Head_Significant_Strikes_Landed INT,
    B_Round_Four_Body_Significant_Strikes_Attempted INT,
    B_Round_Four_Body_Significant_Strikes_Landed INT,
    B_Round_Four_Leg_Significant_Strikes_Attempted INT,
    B_Round_Four_Leg_Significant_Strikes_Landed INT,
    B_Round_Four_Total_Strikes_Attempted INT,
    B_Round_Four_Total_Strikes_Landed INT,
    B_Round_Four_Takedowns_Attempted INT,
    B_Round_Four_Takedowns_Landed INT,
    B_Round_Four_Takedown_Perc VARCHAR,
    B_Round_Four_Submission_Attempts INT,
    B_Round_Four_Grappling_Reversals INT,
    B_Round_Five_Knockdowns INT,
    B_Round_Five_Significant_Strikes_Landed INT,
    B_Round_Five_Significant_Strikes_Attempted INT,
    B_Round_Five_Significant_Strike_Perc VARCHAR,
    B_Round_Five_Significant_Strikes_Distance_Landed INT,
    B_Round_Five_Significant_Strikes_Distance_Attempted INT,
    B_Round_Five_Significant_Strikes_Clinch_Landed INT,
    B_Round_Five_Significant_Strikes_Clinch_Attempted INT,
    B_Round_Five_Significant_Strikes_Ground_Landed INT,
    B_Round_Five_Significant_Strikes_Ground_Attempted INT,
    B_Round_Five_Head_Significant_Strikes_Attempted INT,
    B_Round_Five_Head_Significant_Strikes_Landed INT,
    B_Round_Five_Body_Significant_Strikes_Attempted INT,
    B_Round_Five_Body_Significant_Strikes_Landed INT,
    B_Round_Five_Leg_Significant_Strikes_Attempted INT,
    B_Round_Five_Leg_Significant_Strikes_Landed INT,
    B_Round_Five_Total_Strikes_Attempted INT,
    B_Round_Five_Total_Strikes_Landed INT,
    B_Round_Five_Takedowns_Attempted INT,
    B_Round_Five_Takedowns_Landed INT,
    B_Round_Five_Takedown_Perc VARCHAR,
    B_Round_Five_Submission_Attempts INT,
    B_Round_Five_Grappling_Reversals INT,
    R_Knockdowns INT,
    R_Significant_Strikes_Landed INT,
    R_Significant_Strikes_Attempted INT,
    R_Significant_Strike_Perc VARCHAR,
    R_Significant_Strikes_Distance_Landed INT,
    R_Significant_Strikes_Distance_Attempted INT,
    R_Significant_Strikes_Clinch_Landed INT,
    R_Significant_Strikes_Clinch_Attempted INT,
    R_Significant_Strikes_Ground_Landed INT,
    R_Significant_Strikes_Ground_Attempted INT,
    R_Head_Significant_Strikes_Attempted INT,
    R_Head_Significant_Strikes_Landed INT,
    R_Body_Significant_Strikes_Attempted INT,
    R_Body_Significant_Strikes_Landed INT,
    R_Leg_Significant_Strikes_Attempted INT,
    R_Leg_Significant_Strikes_Landed INT,
    R_Total_Strikes_Attempted INT,
    R_Total_Strikes_Landed INT,
    R_Takedowns_Attempted INT,
    R_Takedowns_Landed INT,
    R_Takedown_Perc VARCHAR,
    R_Submission_Attempts INT,
    R_Grappling_Reversals INT,
    R_Round_One_Knockdowns INT,
    R_Round_One_Significant_Strikes_Landed INT,
    R_Round_One_Significant_Strikes_Attempted INT,
    R_Round_One_Significant_Strike_Perc VARCHAR,
    R_Round_One_Significant_Strikes_Distance_Attempted INT,
    R_Round_One_Significant_Strikes_Distance_Landed INT,
    R_Round_One_Significant_Strikes_Clinch_Attempted INT,
    R_Round_One_Significant_Strikes_Clinch_Landed INT,
    R_Round_One_Significant_Strikes_Ground_Attempted INT,
    R_Round_One_Significant_Strikes_Ground_Landed INT,
    R_Round_One_Head_Significant_Strikes_Attempted INT,
    R_Round_One_Head_Significant_Strikes_Landed INT,
    R_Round_One_Body_Significant_Strikes_Attempted INT,
    R_Round_One_Body_Significant_Strikes_Landed INT,
    R_Round_One_Leg_Significant_Strikes_Attempted INT,
    R_Round_One_Leg_Significant_Strikes_Landed INT,
    R_Round_One_Total_Strikes_Attempted INT,
    R_Round_One_Total_Strikes_Landed INT,
    R_Round_One_Takedowns_Attempted INT,
    R_Round_One_Takedowns_Landed INT,
    R_Round_One_Takedown_Perc VARCHAR,
    R_Round_One_Submission_Attempts INT,
    R_Round_One_Grappling_Reversals INT,
    R_Round_Two_Knockdowns INT,
    R_Round_Two_Significant_Strikes_Landed INT,
    R_Round_Two_Significant_Strikes_Attempted INT,
    R_Round_Two_Significant_Strike_Perc VARCHAR,
    R_Round_Two_Significant_Strikes_Distance_Attempted INT,
    R_Round_Two_Significant_Strikes_Distance_Landed INT,
    R_Round_Two_Significant_Strikes_Clinch_Attempted INT,
    R_Round_Two_Significant_Strikes_Clinch_Landed INT,
    R_Round_Two_Significant_Strikes_Ground_Attempted INT,
    R_Round_Two_Significant_Strikes_Ground_Landed INT,
    R_Round_Two_Head_Significant_Strikes_Attempted INT,
    R_Round_Two_Head_Significant_Strikes_Landed INT,
    R_Round_Two_Body_Significant_Strikes_Attempted INT,
    R_Round_Two_Body_Significant_Strikes_Landed INT,
    R_Round_Two_Leg_Significant_Strikes_Attempted INT,
    R_Round_Two_Leg_Significant_Strikes_Landed INT,
    R_Round_Two_Total_Strikes_Attempted INT,
    R_Round_Two_Total_Strikes_Landed INT,
    R_Round_Two_Takedowns_Attempted INT,
    R_Round_Two_Takedowns_Landed INT,
    R_Round_Two_Takedown_Perc VARCHAR,
    R_Round_Two_Submission_Attempts INT,
    R_Round_Two_Grappling_Reversals INT,
    R_Round_Three_Knockdowns INT,
    R_Round_Three_Significant_Strikes_Landed INT,
    R_Round_Three_Significant_Strikes_Attempted INT,
    R_Round_Three_Significant_Strike_Perc VARCHAR,
    R_Round_Three_Significant_Strikes_Distance_Attempted INT,
    R_Round_Three_Significant_Strikes_Distance_Landed INT,
    R_Round_Three_Significant_Strikes_Clinch_Attempted INT,
    R_Round_Three_Significant_Strikes_Clinch_Landed INT,
    R_Round_Three_Significant_Strikes_Ground_Attempted INT,
    R_Round_Three_Significant_Strikes_Ground_Landed INT,
    R_Round_Three_Head_Significant_Strikes_Attempted INT,
    R_Round_Three_Head_Significant_Strikes_Landed INT,
    R_Round_Three_Body_Significant_Strikes_Attempted INT,
    R_Round_Three_Body_Significant_Strikes_Landed INT,
    R_Round_Three_Leg_Significant_Strikes_Attempted INT,
    R_Round_Three_Leg_Significant_Strikes_Landed INT,
    R_Round_Three_Total_Strikes_Attempted INT,
    R_Round_Three_Total_Strikes_Landed INT,
    R_Round_Three_Takedowns_Attempted INT,
    R_Round_Three_Takedowns_Landed INT,
    R_Round_Three_Takedown_Perc VARCHAR,
    R_Round_Three_Submission_Attempts INT,
    R_Round_Three_Grappling_Reversals INT,
    R_Round_Four_Knockdowns INT,
    R_Round_Four_Significant_Strikes_Landed INT,
    R_Round_Four_Significant_Strikes_Attempted INT,
    R_Round_Four_Significant_Strike_Perc VARCHAR,
    R_Round_Four_Significant_Strikes_Distance_Attempted INT,
    R_Round_Four_Significant_Strikes_Distance_Landed INT,
    R_Round_Four_Significant_Strikes_Clinch_Attempted INT,
    R_Round_Four_Significant_Strikes_Clinch_Landed INT,
    R_Round_Four_Significant_Strikes_Ground_Attempted INT,
    R_Round_Four_Significant_Strikes_Ground_Landed INT,
    R_Round_Four_Head_Significant_Strikes_Attempted INT,
    R_Round_Four_Head_Significant_Strikes_Landed INT,
    R_Round_Four_Body_Significant_Strikes_Attempted INT,
    R_Round_Four_Body_Significant_Strikes_Landed INT,
    R_Round_Four_Leg_Significant_Strikes_Attempted INT,
    R_Round_Four_Leg_Significant_Strikes_Landed INT,
    R_Round_Four_Total_Strikes_Attempted INT,
    R_Round_Four_Total_Strikes_Landed INT,
    R_Round_Four_Takedowns_Attempted INT,
    R_Round_Four_Takedowns_Landed INT,
    R_Round_Four_Takedown_Perc VARCHAR,
    R_Round_Four_Submission_Attempts INT,
    R_Round_Four_Grappling_Reversals INT,
    R_Round_Five_Knockdowns INT,
    R_Round_Five_Significant_Strikes_Landed INT,
    R_Round_Five_Significant_Strikes_Attempted INT,
    R_Round_Five_Significant_Strike_Perc VARCHAR,
    R_Round_Five_Significant_Strikes_Distance_Attempted INT,
    R_Round_Five_Significant_Strikes_Distance_Landed INT,
    R_Round_Five_Significant_Strikes_Clinch_Attempted INT,
    R_Round_Five_Significant_Strikes_Clinch_Landed INT,
    R_Round_Five_Significant_Strikes_Ground_Attempted INT,
    R_Round_Five_Significant_Strikes_Ground_Landed INT,
    R_Round_Five_Head_Significant_Strikes_Attempted INT,
    R_Round_Five_Head_Significant_Strikes_Landed INT,
    R_Round_Five_Body_Significant_Strikes_Attempted INT,
    R_Round_Five_Body_Significant_Strikes_Landed INT,
    R_Round_Five_Leg_Significant_Strikes_Attempted INT,
    R_Round_Five_Leg_Significant_Strikes_Landed INT,
    R_Round_Five_Total_Strikes_Attempted INT,
    R_Round_Five_Total_Strikes_Landed INT,
    R_Round_Five_Takedowns_Attempted INT,
    R_Round_Five_Takedowns_Landed INT,
    R_Round_Five_Takedown_Perc VARCHAR,
    R_Round_Five_Submission_Attempts INT,
    R_Round_Five_Grappling_Reversals INT,
	PRIMARY KEY B_Name, R_Name
);

-- Drop fight_stats table
DROP TABLE fight_stats;

-- Display fight_stats table
SELECT * FROM fight_stats;

