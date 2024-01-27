k3sup install \
 --ip $IP_k3s_main \
 --user ubuntu \
 --ssh-key $SSH_PATH \

wait

# ワーカーノードを並列で結合
k3sup join \
 --ip $IP_k3s_edge_worker \
 --server-ip $IP_k3s_main \
 --user ubuntu \
 --ssh-key $SSH_PATH &
 
k3sup join \
 --ip $IP_k3s_central_worker \
 --server-ip $IP_k3s_main \
 --user ubuntu \
 --ssh-key $SSH_PATH &

wait