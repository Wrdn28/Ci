if [ -f ~/rom/out/target/product/ginkgo/aospa*.zip ]; then
      curl -s https://api.telegram.org/7502875437:AAHWCh1hQ9Wt8X3geAYSKk2T9mtRj8s9ehQ/sendMessage -d chat_id=-1002171624083 -d text="Uploading Build $(cd ~/rom/out/target/product/ginkgo/ && ls aospa*.zip)"
      rclone copy ~/rom/out/target/product/ginkgo/aospa*.zip ginkgo:aospa -P
      curl -s https://api.telegram.org/7502875437:AAHWCh1hQ9Wt8X3geAYSKk2T9mtRj8s9ehQ/sendMessage -d chat_id=-1002171624083 -d text="Build $(cd ~/rom/out/target/product/ginkgo/ && ls aospa*.zip) Uploaded Successfully!"
fi
