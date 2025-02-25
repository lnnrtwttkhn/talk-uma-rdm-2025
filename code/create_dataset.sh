mkdir neuro-data
curl https://www.fil.ion.ucl.ac.uk/spm/download/data/MoAEpilot/MoAEpilot.bids.zip \
-o neuro-data.zip
unzip neuro-data.zip -d neuro-data
rm neuro-data.zip
cd neuro-data
mv MoAEpilot/* .
rm -R MoAEpilot