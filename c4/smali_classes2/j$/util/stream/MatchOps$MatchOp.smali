.class final Lj$/util/stream/MatchOps$MatchOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/TerminalOp;


# instance fields
.field private final inputShape:I

.field final matchKind:Lj$/util/stream/MatchOps$MatchKind;

.field final sinkSupplier:Lj$/util/function/Supplier;


# direct methods
.method constructor <init>(ILj$/util/stream/MatchOps$MatchKind;Lj$/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj$/util/stream/MatchOps$MatchOp;->inputShape:I

    iput-object p2, p0, Lj$/util/stream/MatchOps$MatchOp;->matchKind:Lj$/util/stream/MatchOps$MatchKind;

    iput-object p3, p0, Lj$/util/stream/MatchOps$MatchOp;->sinkSupplier:Lj$/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final evaluateParallel(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lj$/util/stream/MatchOps$MatchTask;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/MatchOps$MatchTask;-><init>(Lj$/util/stream/MatchOps$MatchOp;Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public final evaluateSequential(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lj$/util/stream/MatchOps$MatchOp;->sinkSupplier:Lj$/util/function/Supplier;

    invoke-interface {v0}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/MatchOps$BooleanTerminalSink;

    invoke-virtual {p1, v0, p2}, Lj$/util/stream/Node$-CC;->wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;

    .line 2
    iget-boolean p1, v0, Lj$/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final getOpFlags()I
    .locals 2

    sget v0, Lj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    or-int/2addr v0, v1

    return v0
.end method
