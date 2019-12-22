OUTPUT_RAW="Output_Dodge_Zheng_Xiao.txt"
OUTPUT_Movelets="Output_Movelets.txt"
OUTPUT_Pivots="Output_Pivots.txt"
OUTPUT_MASTERMovelets="Output_MASTERMovelets.txt"
OUTPUT_MASTERPivots="Output_MASTERPivots.txt"
OUTPUT_MASTERMovelets_log="Output_MASTERLog.txt"

BASIC_PATH="./"

RESPATH_LOG="./Log_Test"

BASIC_PATH_SAVE="./NewThreshold"

###################################################ANIMALS##############################################################

DESC_RAW=$BASIC_PATH"./descriptors/Animals_simple.json"

DESC_MOVELETS=$BASIC_PATH"./descriptors/Animals_Movelets.json"

DESC_MASTER=$BASIC_PATH"./descriptors/Animals_MASTER.json"

###########################################################################################################################
##################################################ANIMALS###############################################################
###########################################################################################################################


#java -Xmx55000M -jar "../JarFiles/Dodge.jar" -curpath "$BASIC_PATH" -respath "$BASIC_PATH" -descfile "$DESC_RAW"  -nt 8 | tee -a "$OUTPUT_RAW"   
#wait

#java -Xmx55000M -jar "../JarFiles/Zheng.jar" -curpath "$BASIC_PATH" -respath "$BASIC_PATH" -descfile "$DESC_RAW" -nt 8  -tHCR 45.5 -tSR 0.00018 -tVCR 0.013 | tee -a "$OUTPUT_RAW"   
#wait

#java -Xmx55000M -jar "../JarFiles/Xiao.jar" -curpath "$BASIC_PATH" -respath "$BASIC_PATH" -descfile "$DESC_RAW" -nt 8  -tHCR 45.5 -tSR 0.00018 -tVCR 0.013 | tee -a "$OUTPUT_RAW"   
#wait

#java -Xmx55000M -jar "../JarFiles/MoveletPivots.jar" -curpath "$BASIC_PATH" -respath "$BASIC_PATH" -descfile "$DESC_MOVELETS" -nt 6 -ms 1 -pp 10 -op false -lp true -cache true | tee -a "$OUTPUT_Pivots"   
#wait

#java -Xmx55000M -jar "../JarFiles/MoveletsACMSAC.jar" -curpath "$BASIC_PATH" -respath "$BASIC_PATH" -descfile "$DESC_MOVELETS" -nt 6 -ms 2 -lp true -cache true | tee -a "$OUTPUT_Movelets"   
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