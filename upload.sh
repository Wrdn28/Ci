if [ -f ~/rom/out/target/product/ginkgo/aospa*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/sagit/ && ls qassa*.zip)"
      rclone copy ~/rom/out/target/product/ginkgo/aospa*.zip ginkgo:aospa -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/ginkgo/ && ls aospa*.zip) Uploaded Successfully!"
fi
