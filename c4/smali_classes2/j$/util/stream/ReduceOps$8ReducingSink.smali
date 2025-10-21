.class final Lj$/util/stream/ReduceOps$8ReducingSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/ReduceOps$AccumulatingSink;
.implements Lj$/util/stream/Sink$OfLong;


# instance fields
.field private state:J

.field final synthetic val$identity:J

.field final synthetic val$operator:Lj$/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(JLj$/util/function/LongBinaryOperator;)V
    .locals 0

    iput-wide p1, p0, Lj$/util/stream/ReduceOps$8ReducingSink;->val$identity:J

    iput-object p3, p0, Lj$/util/stream/ReduceOps$8ReducingSink;->val$operator:Lj$/util/function/LongBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$1()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(J)V
    .locals 3

    iget-object v0, p0, Lj$/util/stream/ReduceOps$8ReducingSink;->val$operator:Lj$/util/function/LongBinaryOperator;

    iget-wide v1, p0, Lj$/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-interface {v0, v1, v2, p1, p2}, Lj$/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lj$/util/stream/ReduceOps$8ReducingSink;->state:J

    return-void
.end method

.method public final synthetic accept(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public final begin(J)V
    .locals 0

    iget-wide p1, p0, Lj$/util/stream/ReduceOps$8ReducingSink;->val$identity:J

    iput-wide p1, p0, Lj$/util/stream/ReduceOps$8ReducingSink;->state:J

    return-void
.end method

.method public final synthetic cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final combine(Lj$/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 2

    check-cast p1, Lj$/util/stream/ReduceOps$8ReducingSink;

    iget-wide v0, p1, Lj$/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-virtual {p0, v0, v1}, Lj$/util/stream/ReduceOps$8ReducingSink;->accept(J)V

    return-void
.end method

.method public final synthetic end()V
    .locals 0

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lj$/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
