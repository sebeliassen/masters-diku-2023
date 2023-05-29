This is the main code, notebooks and results used for my master's thesis in Computer Science at the University of Copenhagen (2023). The repository is heavily inspired by https://github.com/warai-0toko/Exact, but has some extra hyperparameters as arguments. These include:
- --test_co2, which can be enabled to test how much co2 is used when running one of the GNN models.
- --col_size, which is really how many elements are grouped together doing grouped quantization. This is refered to as 'G' in the project report.
- --perc, which is a parameter for percentile clipping, as described in the report.
- --lo, which is a parameter for controlling the lower quantization boundary, as thus also the upper quantization boundary, doing quantization. This is refered to as alpha and beta in the report.
- --use_optimal_lo, which uses the dimensionality of the projected activations to calculate the "optimal lo" as described in the report.
