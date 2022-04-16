export BELLMAN_CPU_UTILIZATION=0 # Optimal value depends on your exact hardware.
export FIL_PROOFS_MAXIMIZE_CACHING=1
export FIL_PROOFS_USE_GPU_COLUMN_BUILDER=1 # When having GPU.
export FIL_PROOFS_USE_GPU_TREE_BUILDER=1   # When having GPU.
export FIL_PROOFS_USE_MULTICORE_SDR=1
export FIL_PROOFS_MULTICORE_SDR_PRODUCERS=1
export GOLOG_OUTPUT=file
export GOLOG_FILE=/home/twosson/Devops/filecoin/lotus/miner.log
export GOLOG_LOG_FMT=json

export RUST_LOG=trace

numactl --physcpubind=22-31,53-63 -m 0 ./lotus-miner run &
