#! /bin/bash
echo '......Chengbin HOU @SUSTech 2019......';

echo '------------------- DynRWSG -----------------------------------------' > bash/log/as733_DynRWSG.txt;
python src/main.py --method DynRWSG --task all --graph data/as733/as733.pkl --num-walks 20 --restart-prob 0.2 --update-threshold 0.1 --emb-dim 128 --workers 24  >> bash/log/as733_DynRWSG.txt;
echo '--done--' >> bash/log/as733_DynRWSG.txt;
echo '--DynRWSG done--';

echo '------------------- DeepWalk -----------------------------------------' > bash/log/as733_DeepWalk.txt;
python src/main.py --method DeepWalk --task all --graph data/as733/as733.pkl --num-walks 20 --restart-prob 0.2 --update-threshold 0.1 --emb-dim 128 --workers 24  >> bash/log/as733_DeepWalk.txt;
echo '--done--' >> bash/log/as733_DeepWalk.txt;
echo '--DeepWalk done--';

echo '------------------- HOPE -----------------------------------------' > bash/log/as733_HOPE.txt;
python src/main.py --method HOPE --task all --graph data/as733/as733.pkl --num-walks 20 --restart-prob 0.2 --update-threshold 0.1 --emb-dim 128 --workers 24  >> bash/log/as733_HOPE.txt;
echo '--done--' >> bash/log/as733_HOPE.txt;
echo '--HOPE done--';

echo '------------------- GraRep -----------------------------------------' > bash/log/as733_GraRep.txt;
python src/main.py --method GraRep --task all --graph data/as733/as733.pkl --num-walks 20 --restart-prob 0.2 --update-threshold 0.1 --emb-dim 128 --workers 24  >> bash/log/as733_GraRep.txt;
echo '--done--' >> bash/log/as733_GraRep.txt;
echo '--GraRep done--';

echo '......well done......';