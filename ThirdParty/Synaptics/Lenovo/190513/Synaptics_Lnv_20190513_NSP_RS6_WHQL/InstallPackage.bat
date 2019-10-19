@echo pnputil -a "%~dp0Synaptics\ext_1\LnvAudioExtSynaptics.inf"
pnputil /add-driver "%~dp0Synaptics\ext_1\LnvAudioExtSynaptics.inf" /install

@echo pnputil -a "%~dp0Synaptics\swc_1\SynapticsAPO.inf"
pnputil /add-driver "%~dp0Synaptics\swc_1\SynapticsAPO.inf" /install

@echo pnputil -a "%~dp0Synaptics\swc_1\synaapo_hsa_gensa3.inf"
pnputil /add-driver "%~dp0Synaptics\swc_1\synaapo_hsa_gensa3.inf" /install

@echo Done
