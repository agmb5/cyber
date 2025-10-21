.class final Lj$/util/stream/DistinctOps$1;
.super Lj$/util/stream/ReferencePipeline$StatefulOp;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method constructor <init>(Lj$/util/stream/AbstractPipeline;II)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lj$/util/stream/ReferencePipeline$StatefulOp;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    return-void
.end method


# virtual methods
.method final opEvaluateParallel(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;Lj$/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 4

    sget-object v0, Lj$/util/stream/StreamOpFlag;->DISTINCT:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Lj$/util/stream/Node$-CC;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1, p3}, Lj$/util/stream/Node$-CC;->evaluate(Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p3, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Lj$/util/stream/Node$-CC;->getStreamAndOpFlags()I

    move-result v0

    invoke-virtual {p3, v0}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/DistinctOps$1;->reduce(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)Lj$/util/stream/Node;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v2, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p3, v0, v3}, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1
    new-instance v3, Lj$/util/stream/ForEachOps$ForEachOp$OfRef;

    invoke-direct {v3, v2, v1}, Lj$/util/stream/ForEachOps$ForEachOp$OfRef;-><init>(Lj$/util/function/Consumer;Z)V

    .line 2
    invoke-virtual {v3, p1, p2}, Lj$/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)Ljava/lang/Object;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object p1, p2

    .line 3
    :cond_2
    new-instance p2, Lj$/util/stream/Nodes$CollectionNode;

    invoke-direct {p2, p1}, Lj$/util/stream/Nodes$CollectionNode;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method

.method final opEvaluateParallelLazy(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    sget-object v0, Lj$/util/stream/StreamOpFlag;->DISTINCT:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Lj$/util/stream/Node$-CC;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lj$/util/stream/Node$-CC;->wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Lj$/util/stream/Node$-CC;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/DistinctOps$1;->reduce(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)Lj$/util/stream/Node;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Nodes$CollectionNode;

    invoke-virtual {p1}, Lj$/util/stream/Nodes$CollectionNode;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;

    invoke-virtual {p1, p2}, Lj$/util/stream/Node$-CC;->wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method final opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lj$/util/stream/StreamOpFlag;->DISTINCT:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SORTED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lj$/util/stream/DistinctOps$1$1;

    invoke-direct {p1, p2}, Lj$/util/stream/DistinctOps$1$1;-><init>(Lj$/util/stream/Sink;)V

    return-object p1

    :cond_1
    new-instance p1, Lj$/util/stream/DistinctOps$1$2;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/DistinctOps$1$2;-><init>(Lj$/util/stream/DistinctOps$1;Lj$/util/stream/Sink;)V

    return-object p1
.end method

.method final reduce(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)Lj$/util/stream/Node;
    .locals 3

    sget-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$3:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    sget-object v2, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE$2:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    invoke-static {v0, v1, v2}, Lj$/util/stream/Node$-CC;->makeRef(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/stream/TerminalOp;

    move-result-object v0

    check-cast v0, Lj$/util/stream/ReduceOps$ReduceOp;

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/ReduceOps$ReduceOp;->evaluateParallel(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-instance p2, Lj$/util/stream/Nodes$CollectionNode;

    invoke-direct {p2, p1}, Lj$/util/stream/Nodes$CollectionNode;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method
