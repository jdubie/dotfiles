# for use on all AFS machines
if [ -z "$AWS" ]; then
  return
fi

# for orchestra/aws-monitor
export MONITOR_HOME=~/Documents/orchestra2/aws-monitor

export AWS_CLOUDWATCH_HOME=~/Documents/orchestra2/cloud-watch-tool
export PATH=$PATH:$AWS_CLOUDWATCH_HOME/bin

# AWS Command line tool
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export AWS_CREDENTIAL_FILE=$AWS_CLOUDWATCH_HOME/credential-file-path.template
export EC2_REGION=us-west-1
