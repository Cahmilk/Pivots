##THRESHOLD TESTS

OUTPUT_Gowalla="Output_Threshold_Gowalla.txt"
OUTPUT_Brightkite="Output_Threshold_Brightkite.txt"
OUTPUT_Foursquare="Output_Threshold_Foursquare.txt"
OUTPUT_Animals="Output_Threshold_Animals.txt"
OUTPUT_Hurricanes="Output_Threshold_Hurricanes.txt"

BASIC_PATH="./"
BASIC_PATH_Gowalla="./Gowalla/"
BASIC_PATH_Brightkite="./Brightkite/"
BASIC_PATH_Foursquare="./FOURSQUARENY_CORRECT_TIME/"
BASIC_PATH_Animals="./Animals/"
BASIC_PATH_Hurricanes="./Hurricanes/"

###################################################ANIMALS##############################################################

DESC_MASTER_Gowalla=$BASIC_PATH_Gowalla"./descriptors/Gowalla_MASTER.json"
DESC_MASTER_Brightkite=$BASIC_PATH_Brightkite"descriptors/Brightkite_MASTER.json"
DESC_MASTER_Foursquare=$BASIC_PATH_Foursquare"./descriptors/FoursquareNY_MASTER.json"
DESC_MASTER_Animals=$BASIC_PATH_Animals"./descriptors/Animals_MASTER.json"
DESC_MASTER_Hurricanes=$BASIC_PATH_Hurricanes"./descriptors/Hurricanes_MASTER.json"

#############################################################################################################################
###########################################  threshold test 5% ##############################################################
#############################################################################################################################

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Gowalla" -respath "$BASIC_PATH_Gowalla" -descfile "$DESC_MASTER_Gowalla"  -nt 8 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 5 -op false | tee -a "$OUTPUT_Gowalla"   
#wait

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Brightkite" -respath "$BASIC_PATH_Brightkite" -descfile "$DESC_MASTER_Brightkite"  -nt 8 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 5 -op false | tee -a "$OUTPUT_Brightkite"   
#wait

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Animals" -respath "$BASIC_PATH_Animals" -descfile "$DESC_MASTER_Animals"  -nt 3 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 5 -op false | tee -a "$OUTPUT_Animals"   
#wait

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Hurricanes" -respath "$BASIC_PATH_Hurricanes" -descfile "$DESC_MASTER_Hurricanes"  -nt 8 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 5 -op false | tee -a "$OUTPUT_Hurricanes"   
#wait

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Foursquare" -respath "$BASIC_PATH_Foursquare" -descfile "$DESC_MASTER_Foursquare"  -nt 8 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 5 -op false | tee -a "$OUTPUT_Foursquare"   
#wait

#############################################################################################################################
###########################################  threshold test 15% ##############################################################
#############################################################################################################################

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Gowalla" -respath "$BASIC_PATH_Gowalla" -descfile "$DESC_MASTER_Gowalla"  -nt 8 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 15 -op false | tee -a "$OUTPUT_Gowalla"   
#wait

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Brightkite" -respath "$BASIC_PATH_Brightkite" -descfile "$DESC_MASTER_Brightkite"  -nt 8 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 15 -op false | tee -a "$OUTPUT_Brightkite"   
#wait

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Animals" -respath "$BASIC_PATH_Animals" -descfile "$DESC_MASTER_Animals"  -nt 3 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 15 -op false | tee -a "$OUTPUT_Animals"   
#wait

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Hurricanes" -respath "$BASIC_PATH_Hurricanes" -descfile "$DESC_MASTER_Hurricanes"  -nt 8 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 15 -op false | tee -a "$OUTPUT_Hurricanes"   
#wait

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Foursquare" -respath "$BASIC_PATH_Foursquare" -descfile "$DESC_MASTER_Foursquare"  -nt 8 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 15 -op false | tee -a "$OUTPUT_Foursquare"   
#wait

#############################################################################################################################
###########################################  threshold test 20% ##############################################################
#############################################################################################################################

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Gowalla" -respath "$BASIC_PATH_Gowalla" -descfile "$DESC_MASTER_Gowalla"  -nt 8 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 20 -op false | tee -a "$OUTPUT_Gowalla"   
#wait

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Brightkite" -respath "$BASIC_PATH_Brightkite" -descfile "$DESC_MASTER_Brightkite"  -nt 8 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 20 -op false | tee -a "$OUTPUT_Brightkite"   
#wait

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Animals" -respath "$BASIC_PATH_Animals" -descfile "$DESC_MASTER_Animals"  -nt 3 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 20 -op false | tee -a "$OUTPUT_Animals"   
#wait

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Hurricanes" -respath "$BASIC_PATH_Hurricanes" -descfile "$DESC_MASTER_Hurricanes"  -nt 8 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 20 -op false | tee -a "$OUTPUT_Hurricanes"   
#wait

#java -Xmx30000M -jar "../JarFiles/Remasterized_Pivot_MASTERMovelets_and_MASTERMoveletPivots.jar" -curpath "$BASIC_PATH_Foursquare" -respath "$BASIC_PATH_Foursquare" -descfile "$DESC_MASTER_Foursquare"  -nt 8 -ed true -ms 1 -cache true -output discrete -samples 1 -sampleSize 0.5 -medium "none" -output "discrete" -lowm "false" -pvt true -lp false -pp 20 -op false | tee -a "$OUTPUT_Foursquare"   
#wait