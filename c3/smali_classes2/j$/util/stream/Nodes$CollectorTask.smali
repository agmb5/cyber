.class Lj$/util/stream/Nodes$CollectorTask;
.super Lj$/util/stream/AbstractTask;
.source "SourceFile"


# instance fields
.field protected final builderFactory:Lj$/util/function/LongFunction;

.field protected final concFactory:Lj$/util/function/BinaryOperator;

.field protected final helper:Lj$/util/stream/Node$-CC;


# direct methods
.method constructor <init>(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;Lj$/util/function/LongFunction;Lj$/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractTask;-><init>(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)V

    iput-object p1, p0, Lj$/util/stream/Nodes$CollectorTask;->helper:Lj$/util/stream/Node$-CC;

    iput-object p3, p0, Lj$/util/stream/Nodes$CollectorTask;->builderFactory:Lj$/util/function/LongFunction;

    iput-object p4, p0, Lj$/util/stream/Nodes$CollectorTask;->concFactory:Lj$/util/function/BinaryOperator;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/Nodes$CollectorTask;Lj$/util/Spliterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractTask;-><init>(Lj$/util/stream/AbstractTask;Lj$/util/Spliterator;)V

    iget-object p2, p1, Lj$/util/stream/Nodes$CollectorTask;->helper:Lj$/util/stream/Node$-CC;

    iput-object p2, p0, Lj$/util/stream/Nodes$CollectorTask;->helper:Lj$/util/stream/Node$-CC;

    iget-object p2, p1, Lj$/util/stream/Nodes$CollectorTask;->builderFactory:Lj$/util/function/LongFunction;

    iput-object p2, p0, Lj$/util/stream/Nodes$CollectorTask;->builderFactory:Lj$/util/function/LongFunction;

    iget-object p1, p1, Lj$/util/stream/Nodes$CollectorTask;->concFactory:Lj$/util/function/BinaryOperator;

    iput-object p1, p0, Lj$/util/stream/Nodes$CollectorTask;->concFactory:Lj$/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method protected final doLeaf()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/Nodes$CollectorTask;->builderFactory:Lj$/util/function/LongFunction;

    iget-object v1, p0, Lj$/util/stream/Nodes$CollectorTask;->helper:Lj$/util/stream/Node$-CC;

    iget-object v2, p0, Lj$/util/stream/AbstractTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v1, v2}, Lj$/util/stream/Node$-CC;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node$Builder;

    iget-object v1, p0, Lj$/util/stream/Nodes$CollectorTask;->helper:Lj$/util/stream/Node$-CC;

    iget-object v2, p0, Lj$/util/stream/AbstractTask;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v1, v0, v2}, Lj$/util/stream/Node$-CC;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Node$Builder;->build()Lj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final makeChild(Lj$/util/Spliterator;)Lj$/util/stream/AbstractTask;
    .locals 1

    new-instance v0, Lj$/util/stream/Nodes$CollectorTask;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/Nodes$CollectorTask;-><init>(Lj$/util/stream/Nodes$CollectorTask;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 3

    invoke-virtual {p0}, Lj$/util/stream/AbstractTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/Nodes$CollectorTask;->concFactory:Lj$/util/function/BinaryOperator;

    iget-object v1, p0, Lj$/util/stream/AbstractTask;->leftChild:Lj$/util/stream/AbstractTask;

    check-cast v1, Lj$/util/stream/Nodes$CollectorTask;

    invoke-virtual {v1}, Lj$/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Node;

    iget-object v2, p0, Lj$/util/stream/AbstractTask;->rightChild:Lj$/util/stream/AbstractTask;

    check-cast v2, Lj$/util/stream/Nodes$CollectorTask;

    invoke-virtual {v2}, Lj$/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Node;

    invoke-interface {v0, v1, v2}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    invoke-virtual {p0, v0}, Lj$/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/AbstractTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
