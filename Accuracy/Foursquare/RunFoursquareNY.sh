OUTPUT_RAW="Output_Dodge_Zheng_Xiao.txt"
OUTPUT_Movelets="Output_Movelets.txt"
OUTPUT_Pivots="Output_Pivots.txt"
OUTPUT_MASTERMovelets="Output_MASTERMovelets.txt"
OUTPUT_MASTERPivots="Output_MASTERPivots.txt"

OUTPUT_MASTERMovelets_log="LOG_Output_MASTERMovelets.txt"

BASIC_PATH="./"

###################################################ANIMALS##############################################################

DESC_MOVELETS=$BASIC_PATH"./descriptors/FoursquareNY_Movelets.json"

DESC_MASTER=$BASIC_PATH"./descriptors/FoursquareNY_MASTER.json"

RESPATH_LOG=$BASIC_PATH"./Log_Test/"

###########################################################################################################################
##################################################BRIGHTKITE###############################################################
###########################################################################################################################


#java -Xmx55000M -jar "../JarFiles/MoveletPivots.jar" -curpath "$BASIC_PATH" -respath "$BASIC_PATH" -descfile "$DESC_MOVELETS" -nt 8 -ms 1 -pp 10 -op false -lp true -cache true  | tee -a "$OUTPUT_Pivots"  
#wait

#java -Xmx55000M -jar "../JarFiles/MoveletsACMSAC.jar" -curpath "$BASIC_PATH" -respath "$BASIC_PATH" -descfile "$DESC_MOVELETS" -nt 8 -ms 2 -lp true -cache true | tee -a "$OUTPUT_Movelets"  
#wait

#java -Xmx55000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH" -respath "$BASIC_PATH" -descfile "$DESC_MASTER"  -nt 6 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 10 -op false | tee -a "$OUTPUT_MASTERPivots"   
#wait


###########################################################################################################################
########################################### MASTER Movelets ###############################################################
###########################################################################################################################

#java -Xmx55000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH" -respath "$BASIC_PATH" -descfile "$DESC_MASTER"  -nt 6 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets"   
#wait

#java -Xmx55000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH" -respath "$BASIC_PATH" -descfile "$DESC_MASTER"  -nt 6 -ed true -ms 1 -Ms -3 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt false -lp false | tee -a "$OUTPUT_MASTERMovelets"   
#wait