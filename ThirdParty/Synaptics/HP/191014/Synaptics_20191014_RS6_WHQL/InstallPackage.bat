
@echo pnputil -a "%~dp0Synaptics\ext_1\HpAudioExtSynaptics.inf"
pnputil /add-driver "%~dp0Synaptics\ext_1\HpAudioExtSynaptics.inf" /install

@echo pnputil -a "%~dp0Synaptics\ext_1\SynaHPExtDMIC.inf"
pnputil /add-driver "%~dp0Synaptics\ext_1\SynaHPExtDMIC.inf" /install

@echo pnputil -a "%~dp0Synaptics\swc_1\SynapticsAPO.inf"
pnputil /add-driver "%~dp0Synaptics\swc_1\SynapticsAPO.inf" /install

@echo Done
