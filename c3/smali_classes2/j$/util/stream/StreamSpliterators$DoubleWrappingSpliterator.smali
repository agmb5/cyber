.class final Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;
.super Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator$OfDouble;


# direct methods
.method constructor <init>(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;Z)V

    return-void
.end method

.method constructor <init>(Lj$/util/stream/Node$-CC;Lj$/util/function/Supplier;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Lj$/util/stream/Node$-CC;Lj$/util/function/Supplier;Z)V

    return-void
.end method


# virtual methods
.method public final synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final forEachRemaining(Lj$/util/function/DoubleConsumer;)V
    .locals 3

    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Lj$/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Lj$/util/stream/Node$-CC;

    new-instance v1, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Lj$/util/Spliterator;

    invoke-virtual {v0, v1, p1}, Lj$/util/stream/Node$-CC;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->tryAdvance(Lj$/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lj$/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->forEachRemaining(Lj$/util/function/DoubleConsumer;)V

    return-void
.end method

.method final initPartialTraversalState()V
    .locals 4

    new-instance v0, Lj$/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Lj$/util/stream/SpinedBuffer$OfDouble;-><init>()V

    iput-object v0, p0, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Lj$/util/stream/AbstractSpinedBuffer;

    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Lj$/util/stream/Node$-CC;

    new-instance v2, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lj$/util/stream/Node$-CC;->wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Lj$/util/stream/Sink;

    new-instance v0, Lj$/util/stream/SpinedBuffer$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lj$/util/stream/SpinedBuffer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->pusher:Lj$/util/stream/SpinedBuffer$$ExternalSyntheticLambda0;

    return-void
.end method

.method public final synthetic tryAdvance(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfDouble;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final tryAdvance(Lj$/util/function/DoubleConsumer;)Z
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->doAdvance()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Lj$/util/stream/AbstractSpinedBuffer;

    check-cast v1, Lj$/util/stream/SpinedBuffer$OfDouble;

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    .line 1
    invoke-virtual {v1, v2, v3}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->chunkFor(J)I

    move-result v4

    iget v5, v1, Lj$/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    iget-object v1, v1, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    check-cast v1, [D

    long-to-int v3, v2

    aget-wide v2, v1, v3

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    check-cast v5, [[D

    aget-object v5, v5, v4

    iget-object v1, v1, Lj$/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    aget-wide v6, v1, v4

    sub-long/2addr v2, v6

    long-to-int v1, v2

    aget-wide v2, v5, v1

    .line 2
    :goto_0
    invoke-interface {p1, v2, v3}, Lj$/util/function/DoubleConsumer;->accept(D)V

    :cond_1
    return v0
.end method

.method public final bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lj$/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->tryAdvance(Lj$/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public final trySplit()Lj$/util/Spliterator$OfDouble;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->trySplit()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->trySplit()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method final wrap(Lj$/util/Spliterator;)Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .locals 3

    new-instance v0, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Lj$/util/stream/Node$-CC;

    iget-boolean v2, p0, Lj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/StreamSpliterators$DoubleWrappingSpliterator;-><init>(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;Z)V

    return-object v0
.end method
