#!/usr/bin/env sh
# patch_opencv4.sh — replace old CV_ macros with OpenCV4 API in all .cc/.cpp files

# find all .cc and .cpp files under current dir
find . -type f \( -name '*.cc' -o -name '*.cpp' \) -print0 | \
  xargs -0 sed -i \
    -e 's/CV_REDUCE_SUM/cv::REDUCE_SUM/g' \
    -e 's/CV_LOAD_IMAGE_UNCHANGED/cv::IMREAD_UNCHANGED/g' \
    -e 's/CV_GRAY2BGR/cv::COLOR_GRAY2BGR/g' \
    -e 's/CV_RGBA2GRAY/cv::COLOR_RGBA2GRAY/g' \
    -e 's/CV_BGRA2GRAY/cv::COLOR_BGRA2GRAY/g' \
    -e 's/CV_RGB2GRAY/cv::COLOR_RGB2GRAY/g' \
    -e 's/CV_BGR2GRAY/cv::COLOR_BGR2GRAY/g'

echo "OpenCV4 macro patching complete."
