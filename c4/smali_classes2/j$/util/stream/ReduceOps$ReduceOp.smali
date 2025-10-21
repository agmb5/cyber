.class abstract Lj$/util/stream/ReduceOps$ReduceOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/TerminalOp;


# instance fields
.field private final inputShape:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj$/util/stream/ReduceOps$ReduceOp;->inputShape:I

    return-void
.end method


# virtual methods
.method public final evaluateParallel(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lj$/util/stream/ReduceOps$ReduceTask;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/ReduceOps$ReduceTask;-><init>(Lj$/util/stream/ReduceOps$ReduceOp;Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {p1}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final evaluateSequential(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/ReduceOps$ReduceOp;->makeSink()Lj$/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lj$/util/stream/Node$-CC;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    check-cast v0, Lj$/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getOpFlags()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract makeSink()Lj$/util/stream/ReduceOps$AccumulatingSink;
.end method
