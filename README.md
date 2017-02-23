# Deepnet

**Multi-Layered Neural Network Example in Elixir**

Machine Learning has made amazing advancements over the past few years and it is
poised to take the field of artificial intelligence into new advancements. This fact
has led to a growing interest from developers all around as to the how's and why's
of this new paradigm.

Neural Networks are a classification of Machine Learning in Artificial Intelligence.
Neural Networks are a great way to achieve sophisticated insights from very large sums
of data. Most examples on the web are written in Python or Java. This is not a
bad thing, but in the Elixir community, we need a way to show how a neural Network
can work within our own eco-system. Thus, the reason for this project. `Deepnet` is a fully
implemented Multi-Layered Neural Network using the
[Elixir programming language](http://elixir-lang.org).

## About

`Deepnet` has a 3 x 3 architecture. This is a basic deep learning architecture that is
good at training and solving a vast amount of problems. This project accompanies
the new blog post called `Deep Learning: Building and Training a Multi-Layered
Neural Network in Elixir`. The post can be found [Here](http://tinyurl.com/jkgy3za)

## Installation

```bash
  mix deps.get
```

```bash
iex -S mix
```

```bash
iex(1)> Deepnet.learn
| EPOCH: 1  | ERROR RATE: 0.20278373999146793
| EPOCH: 2  | ERROR RATE: 0.17433699158339702
| EPOCH: 3  | ERROR RATE: 0.14954359736063005
| EPOCH: 4  | ERROR RATE: 0.1289944756533924
| EPOCH: 5  | ERROR RATE: 0.11253130247989539
| EPOCH: 6  | ERROR RATE: 0.09954116918093837
| EPOCH: 7  | ERROR RATE: 0.08928877398645374
| EPOCH: 8  | ERROR RATE: 0.08111397398651814
| EPOCH: 9  | ERROR RATE: 0.074496160402515
| EPOCH: 10 | ERROR RATE: 0.06904860334491869
| EPOCH: 11 | ERROR RATE: 0.06449058547920798
| EPOCH: 12 | ERROR RATE: 0.06061899078047902
| EPOCH: 13 | ERROR RATE: 0.05728576725317817
| EPOCH: 14 | ERROR RATE: 0.05438163113949299
| EPOCH: 15 | ERROR RATE: 0.05182470838188349
| EPOCH: 16 | ERROR RATE: 0.049552704961178536
| EPOCH: 17 | ERROR RATE: 0.04751750031867336
| EPOCH: 18 | ERROR RATE: 0.04568138248787834
| EPOCH: 19 | ERROR RATE: 0.044014395425692375
| EPOCH: 20 | ERROR RATE: 0.04249244498367879
| EPOCH: 21 | ERROR RATE: 0.04109592778912693
| EPOCH: 22 | ERROR RATE: 0.03980872498948598
| EPOCH: 23 | ERROR RATE: 0.03861745390466467
| EPOCH: 24 | ERROR RATE: 0.03751090438597429
| EPOCH: 25 | ERROR RATE: 0.036479609168262934
| EPOCH: 26 | ERROR RATE: 0.03551551264051488
| EPOCH: 27 | ERROR RATE: 0.03461171276888877
| EPOCH: 28 | ERROR RATE: 0.03376225800960348
| EPOCH: 29 | ERROR RATE: 0.032961986002413735
| EPOCH: 30 | ERROR RATE: 0.03220639433009644
| EPOCH: 31 | ERROR RATE: 0.031491536123121784
| EPOCH: 32 | ERROR RATE: 0.030813935087792333
| EPOCH: 33 | ERROR RATE: 0.03017051584780409
| EPOCH: 34 | ERROR RATE: 0.029558546455123125
| EPOCH: 35 | ERROR RATE: 0.02897559064424964
| EPOCH: 36 | ERROR RATE: 0.028419467942788917
| EPOCH: 37 | ERROR RATE: 0.027888220159066623
| EPOCH: 38 | ERROR RATE: 0.027380083078723628
| EPOCH: 39 | ERROR RATE: 0.02689346244156245
| EPOCH: 40 | ERROR RATE: 0.026426913455361082
| EPOCH: 41 | ERROR RATE: 0.025979123248075258
| EPOCH: 42 | ERROR RATE: 0.02554889577353142
| EPOCH: 43 | ERROR RATE: 0.02513513877559306
| EPOCH: 44 | ERROR RATE: 0.02473685248728043
| EPOCH: 45 | ERROR RATE: 0.024353119798533284
| EPOCH: 46 | ERROR RATE: 0.023983097672332806
| EPOCH: 47 | ERROR RATE: 0.023626009626128614
| EPOCH: 48 | ERROR RATE: 0.023281139125783112
| EPOCH: 49 | ERROR RATE: 0.022947823763968287
| EPOCH: 50 | ERROR RATE: 0.022625450115241086
| EPOCH: 51 | ERROR RATE: 0.022313449176748112
| EPOCH: 52 | ERROR RATE: 0.02201129231735648
| EPOCH: 53 | ERROR RATE: 0.021718487669516253
| EPOCH: 54 | ERROR RATE: 0.021434576907762626
| EPOCH: 55 | ERROR RATE: 0.021159132365809376
| EPOCH: 56 | ERROR RATE: 0.020891754450946484
| EPOCH: 57 | ERROR RATE: 0.020632069320156977
| EPOCH: 58 | ERROR RATE: 0.020379726787196115
| EPOCH: 59 | ERROR RATE: 0.020134398433971842
| EPOCH: 60 | ERROR RATE: 0.019895775903057113

 Learned to achieve target [1, 1, 1] in 60 epochs.
 Network operated with the user inputs [0, 1, 0].
 The Final ERROR RATE for the network is 0.019895775903057113.

```
For more information about multi-layered neural networks read the blog associated with
this project at Automating The Future.
