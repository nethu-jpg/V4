if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/nethu-jpg/V4.git /V4
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /V4
fi
cd /V4
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
