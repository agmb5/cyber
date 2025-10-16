.class abstract Lj$/util/stream/ForEachOps$ForEachOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/TerminalOp;
.implements Lj$/util/stream/TerminalSink;


# instance fields
.field private final ordered:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lj$/util/stream/ForEachOps$ForEachOp;->ordered:Z

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$1()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$2()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic begin(J)V
    .locals 0

    return-void
.end method

.method public final synthetic cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic end()V
    .locals 0

    return-void
.end method

.method public final evaluateParallel(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lj$/util/stream/ForEachOps$ForEachOp;->ordered:Z

    if-eqz v0, :cond_0

    new-instance v0, Lj$/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v0, p1, p2, p0}, Lj$/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;Lj$/util/stream/Sink;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/stream/ForEachOps$ForEachTask;

    invoke-virtual {p1, p0}, Lj$/util/stream/Node$-CC;->wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lj$/util/stream/ForEachOps$ForEachTask;-><init>(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;Lj$/util/stream/Sink;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final evaluateSequential(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p0, p2}, Lj$/util/stream/Node$-CC;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOpFlags()I
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/ForEachOps$ForEachOp;->ordered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    :goto_0
    return v0
.end method
