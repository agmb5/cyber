.class final Lj$/util/stream/ReduceOps$12ReducingSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/ReduceOps$AccumulatingSink;
.implements Lj$/util/stream/Sink$OfDouble;


# instance fields
.field private empty:Z

.field private state:D

.field final synthetic val$operator:Lj$/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(Lj$/util/function/DoubleBinaryOperator;)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/ReduceOps$12ReducingSink;->val$operator:Lj$/util/function/DoubleBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 3

    iget-boolean v0, p0, Lj$/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/ReduceOps$12ReducingSink;->empty:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/util/stream/ReduceOps$12ReducingSink;->val$operator:Lj$/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Lj$/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-interface {v0, v1, v2, p1, p2}, Lj$/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lj$/util/stream/ReduceOps$12ReducingSink;->state:D

    return-void
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$1()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$2()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public final begin(J)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/ReduceOps$12ReducingSink;->empty:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lj$/util/stream/ReduceOps$12ReducingSink;->state:D

    return-void
.end method

.method public final synthetic cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final combine(Lj$/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 2

    check-cast p1, Lj$/util/stream/ReduceOps$12ReducingSink;

    iget-boolean v0, p1, Lj$/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-nez v0, :cond_0

    iget-wide v0, p1, Lj$/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-virtual {p0, v0, v1}, Lj$/util/stream/ReduceOps$12ReducingSink;->accept(D)V

    :cond_0
    return-void
.end method

.method public final synthetic end()V
    .locals 0

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lj$/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lj$/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-static {v0, v1}, Lj$/util/OptionalDouble;->of(D)Lj$/util/OptionalDouble;

    move-result-object v0

    :goto_0
    return-object v0
.end method
