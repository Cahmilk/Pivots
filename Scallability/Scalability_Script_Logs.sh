
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

######################################################################## 1º: 100 t x 10 p ################################################################################

PATH_1=$BASIC_PATH"./Vary_Number_of_Points/train_200_trajectories_10_points/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_1" -respath "$PATH_1" -descfile "$DESC_1" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_1" -respath "$PATH_1" -descfile "$DESC_1"  -nt 8 -ed true -ms 1 -Ms -3 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait

######################################################################## 2º: 100 t x 50 p ################################################################################

PATH_2=$BASIC_PATH"./Vary_Number_of_Points/train_200_trajectories_50_points/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_2" -respath "$PATH_2" -descfile "$DESC_1" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_2" -respath "$PATH_2" -descfile "$DESC_1"  -nt 8 -ed true -ms 1 -Ms -3 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait

######################################################################## 3º: 100 t x 100 p ################################################################################

PATH_3=$BASIC_PATH"./Vary_Number_of_Points/train_200_trajectories_100_points/"


java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_3" -respath "$PATH_3" -descfile "$DESC_1" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_3" -respath "$PATH_3" -descfile "$DESC_1"  -nt 8 -ed true -ms 1 -Ms -3 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait

######################################################################## 4º: 100 t x 200 p ################################################################################

PATH_4=$BASIC_PATH"./Vary_Number_of_Points/train_200_trajectories_200_points/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_4" -respath "$PATH_4" -descfile "$DESC_1" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_4" -respath "$PATH_4" -descfile "$DESC_1"  -nt 8 -ed true -ms 1 -Ms -3 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait

######################################################################## 5º: 100 t x 400 p ################################################################################

PATH_5=$BASIC_PATH"./Vary_Number_of_Points/train_200_trajectories_400_points/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_5" -respath "$PATH_5" -descfile "$DESC_1" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_5" -respath "$PATH_5" -descfile "$DESC_1"  -nt 8 -ed true -ms 1 -Ms -3 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait

##########################################################################################################################################################################
#####################################################  SCND, SAME NUMBER OF POINTS, VARY NUMBER OF TRAJS  ################################################################
##########################################################################################################################################################################

######################################################################## 1º: 100 t x 10 p ################################################################################

PATH_1=$BASIC_PATH"./Vary_Number_of_Trajectories/train_100_trajectories_20_points/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_1" -respath "$PATH_1" -descfile "$DESC_1" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_1" -respath "$PATH_1" -descfile "$DESC_1"  -nt 8 -ed true -ms 1 -Ms -3 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait

######################################################################## 2º: 500 t x 10 p ################################################################################

PATH_2=$BASIC_PATH"./Vary_Number_of_Trajectories/train_500_trajectories_20_points/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_2" -respath "$PATH_2" -descfile "$DESC_1" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_2" -respath "$PATH_2" -descfile "$DESC_1"  -nt 8 -ed true -ms 1 -Ms -3 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait

######################################################################## 3º: 1000 t x 10 p ################################################################################

PATH_3=$BASIC_PATH"./Vary_Number_of_Trajectories/train_1000_trajectories_20_points/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_3" -respath "$PATH_3" -descfile "$DESC_1" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_3" -respath "$PATH_3" -descfile "$DESC_1"  -nt 8 -ed true -ms 1 -Ms -3 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait

######################################################################## 4º: 5000 t x 10 p ################################################################################

PATH_4=$BASIC_PATH"./Vary_Number_of_Trajectories/train_2000_trajectories_20_points/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_4" -respath "$PATH_4" -descfile "$DESC_1" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_4" -respath "$PATH_4" -descfile "$DESC_1"  -nt 8 -ed true -ms 1 -Ms -3 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait

######################################################################## 5º: 10000 t x 10 p ################################################################################

PATH_5=$BASIC_PATH"./Vary_Number_of_Trajectories/train_4000_trajectories_20_points/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_5" -respath "$PATH_5" -descfile "$DESC_1" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_5" -respath "$PATH_5" -descfile "$DESC_1"  -nt 8 -ed true -ms 1 -Ms -3 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait


##########################################################################################################################################################################
#################################################  THRD, SAME NUMBER OF POINTS AND TRAJ, VARY DIMENSIONS  ################################################################
##########################################################################################################################################################################

######################################################################## 1º: 1 DIMENSION ################################################################################

PATH_1=$BASIC_PATH"./Vary_Number_of_Dimensions/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_1" -respath "$PATH_1" -descfile "$DESC_1" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_1" -respath "$PATH_1" -descfile "$DESC_1"  -nt 8 -ed true -ms 1 -Ms -3 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait

######################################################################## 2º: 2 DIMENSIONS ################################################################################

PATH_2=$BASIC_PATH"./Vary_Number_of_Dimensions/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_2" -respath "$PATH_2" -descfile "$DESC_2" -nt 8 -Ms -3 -ms 2 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_2" -respath "$PATH_2" -descfile "$DESC_2"  -nt 8 -ed true -ms 1 -Ms -3 -mnf -2 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait

######################################################################## 3º: 3 DIMENSIONS ################################################################################

PATH_3=$BASIC_PATH"./Vary_Number_of_Dimensions/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_3" -respath "$PATH_3" -descfile "$DESC_3" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_3" -respath "$PATH_3" -descfile "$DESC_3"  -nt 8 -ed true -ms 1 -Ms -3 -mnf -2 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait

######################################################################## 4º: 4 DIMENSIONS ################################################################################

PATH_4=$BASIC_PATH"./Vary_Number_of_Dimensions/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_4" -respath "$PATH_4" -descfile "$DESC_4" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_4" -respath "$PATH_4" -descfile "$DESC_4"  -nt 8 -ed true -ms 1 -Ms -3 -mnf -2 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait

######################################################################## 5º: 5 DIMENSIONS ################################################################################

PATH_5=$BASIC_PATH"./Vary_Number_of_Dimensions/"

java -Xmx30000M -jar "../JarFiles/Log_MoveletsACMSAC.jar" -curpath "$PATH_5" -respath "$PATH_5" -descfile "$DESC_5" -nt 8 -ms 2 -Ms -3 -lp true -cache true | tee -a "$OUTPUT_Movelets_log"  
wait

java -Xmx30000M -jar "../JarFiles/Log_MASTERMovelets.jar" -curpath "$PATH_5" -respath "$PATH_5" -descfile "$DESC_5"  -nt 8 -ed true -ms 1 -Ms -3 -mnf -2 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets_log"   
wait
