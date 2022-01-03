# =============================================================================
# Clear the workspace after each chapter
# 2022-01-03
#
# Use this function to clear the workspace after each chapter. It helps prevent 
# accidental errors that can occur with lingering objects in the global 
# environment.
# Pass the file  name to the after_chapter_script: parameter in the yaml
# heard of _bookdown.yml.
#
# https://bookdown.org/yihui/bookdown/configuration.html#configuration
# =============================================================================

rm(list = ls())
