.class final Lj$/util/stream/LongPipeline$Head;
.super Lj$/util/stream/LongPipeline;
.source "SourceFile"


# direct methods
.method constructor <init>(Lj$/util/Spliterator;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/LongPipeline;-><init>(Lj$/util/Spliterator;I)V

    return-void
.end method


# virtual methods
.method public final forEach(Lj$/util/function/LongConsumer;)V
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->sourceStageSpliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/LongPipeline;->access$000(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Lj$/util/function/LongConsumer;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/LongPipeline;->forEach(Lj$/util/function/LongConsumer;)V

    :goto_0
    return-void
.end method

.method public final forEachOrdered(Lj$/util/function/LongConsumer;)V
    .locals 2

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->sourceStageSpliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/LongPipeline;->access$000(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Lj$/util/function/LongConsumer;)V

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/ForEachOps$ForEachOp$OfLong;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/ForEachOps$ForEachOp$OfLong;-><init>(Lj$/util/function/LongConsumer;Z)V

    .line 2
    invoke-virtual {p0, v0}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method final opIsStateful()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic parallel()Lj$/util/stream/LongStream;
    .locals 0

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->parallel()Lj$/util/stream/BaseStream;

    return-object p0
.end method

.method public final bridge synthetic sequential()Lj$/util/stream/LongStream;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->sequential()Lj$/util/stream/BaseStream;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method
