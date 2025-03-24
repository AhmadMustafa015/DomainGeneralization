python -m domainbed.scripts.sweep launch\
       --data_dir=/mnt/x/DomainGeneralizationDatasets\
       --output_dir=./sweep/chin\
       --command_launcher local\
       --algorithms CHIN\
       --datasets OfficeHome\
       --hparams '{"dim_C": 1024, "lambda_adv": 0.1, "lambda_recon": 0.01, "lr": 1e-4}'\
       --n_hparams 1\
       --n_trials 3


python -m domainbed.scripts.sweep delete_incomplete\
       --data_dir=/mnt/x/DomainGeneralizationDatasets\
       --output_dir=./sweep/chin\
       --command_launcher dummy\
       --algorithms CHIN\
       --datasets OfficeHome\
       --hparams '{"dim_C": 1024, "lambda_adv": 0.1, "lambda_recon": 0.01, "lr": 1e-4}'\
       --n_hparams 1\
       --n_trials 3

       python -m domainbed.scripts.collect_results\
       --input_dir=./sweep/chin