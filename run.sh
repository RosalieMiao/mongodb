lein run test-all -w list-append --nodes-file ~/nodes -r 1000 --concurrency 3n --time-limit 120 --max-writes-per-key 128 \
--read-concern majority --write-concern majority --txn-read-concern snapshot --txn-write-concern majority \
--nemesis-interval 1 --nemesis partition \
--test-count 1
