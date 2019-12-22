
########################################### SCALABILITY ##############################################################

OUTPUT_Movelets_log="LOG_Output_Movelets2.txt"
OUTPUT_MASTERMovelets_log="LOG_Output_MASTERMovelets2.txt"

BASIC_PATH="./"

################################################### DESC PATHS ##############################################################

DESC_1=$BASIC_PATH"./descriptors/Scalability_1_Dimension.json"
DESC_2=$BASIC_PATH"./descriptors/Scalability_2_Dimensions.json"
DESC_3=$BASIC_PATH"./descriptors/Scalability_3_Dimensions.json"
DESC_4=$BASIC_PATH"./descriptors/Scalability_4_Dimensions.json"
DESC_5=$BASIC_PATH"./descriptors/Scalability_5_Dimensions.json"

##########################################################################################################################################################################
#################################################### FIRST, SAME NUMBER OF EXAMPLES, VARY NUMBER OF POINTS ################################################################
##########################################################################################################################################################################

##########################################################################################################################################################################
#####################################################  SCND, SAME NUMBER OF POINTS, VARY NUMBER OF TRAJS  ################################################################
##########################################################################################################################################################################



##########################################################################################################################################################################
#################################################  THRD, SAME NUMBER OF POINTS AND TRAJ, VARY DIMENSIONS  ################################################################
##########################################################################################################################################################################

######################################################################## 5º: 5 DIMENSIONS ################################################################################

PATH_5=$BASIC_PATH"./Vary_Number_of_Dimensions/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_5" -respath "$PATH_5" -descfile "$DESC_5" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_5" -respath "$PATH_5" -descfile "$DESC_5"  -nt 8 -ed true -ms 1 -Ms -3 -mnf -2 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait
