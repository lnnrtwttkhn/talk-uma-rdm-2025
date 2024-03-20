mkdir neuro-data
wget https://www.fil.ion.ucl.ac.uk/spm/download/data/MoAEpilot/MoAEpilot.bids.zip \
-O neuro-data.zip
unzip neuro-data.zip -d neuro-data
rm neuro-data.zip
cd neuro-data
mv MoAEpilot/* .
rm -R MoAEpilot