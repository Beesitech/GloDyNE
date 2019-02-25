#! /bin/bash
echo '......Chengbin HOU @SUSTech 2019......';

echo '------------------- DynRWSG -----------------------------------------' > bash/log/facebook_DynRWSG.txt;
python src/main.py --method DynRWSG --task lp --graph data/facebook/facebook.pkl --num-walks 20 --restart-prob 0.2 --update-threshold 0.1 --emb-dim 128 --workers 24  >> bash/log/facebook_DynRWSG.txt;
echo '--done--' >> bash/log/facebook_DynRWSG.txt;
echo '--DynRWSG done--';

echo '------------------- DeepWalk -----------------------------------------' > bash/log/facebook_DeepWalk.txt;
python src/main.py --method DeepWalk --task lp --graph data/facebook/facebook.pkl --num-walks 20 --restart-prob 0.2 --update-threshold 0.1 --emb-dim 128 --workers 24  >> bash/log/facebook_DeepWalk.txt;
echo '--done--' >> bash/log/facebook_DeepWalk.txt;
echo '--DeepWalk done--';

echo '------------------- HOPE -----------------------------------------' > bash/log/facebook_HOPE.txt;
python src/main.py --method HOPE --task lp --graph data/facebook/facebook.pkl --num-walks 20 --restart-prob 0.2 --update-threshold 0.1 --emb-dim 128 --workers 24  >> bash/log/facebook_HOPE.txt;
echo '--done--' >> bash/log/facebook_HOPE.txt;
echo '--HOPE done--';

echo '------------------- GraRep -----------------------------------------' > bash/log/facebook_GraRep.txt;
python src/main.py --method GraRep --task lp --graph data/facebook/facebook.pkl --num-walks 20 --restart-prob 0.2 --update-threshold 0.1 --emb-dim 128 --workers 24  >> bash/log/facebook_GraRep.txt;
echo '--done--' >> bash/log/facebook_GraRep.txt;
echo '--GraRep done--';

echo '......well done......';