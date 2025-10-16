.class final Lj$/util/stream/ReduceOps$2ReducingSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/ReduceOps$AccumulatingSink;


# instance fields
.field private empty:Z

.field private state:Ljava/lang/Object;

.field final synthetic val$operator:Lj$/util/function/BinaryOperator;


# direct methods
.method constructor <init>(Lj$/util/function/BinaryOperator;)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->val$operator:Lj$/util/function/BinaryOperator;

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

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$2()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->val$operator:Lj$/util/function/BinaryOperator;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    return-void
.end method

.method public final begin(J)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    return-void
.end method

.method public final synthetic cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final combine(Lj$/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 1

    check-cast p1, Lj$/util/stream/ReduceOps$2ReducingSink;

    iget-boolean v0, p1, Lj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lj$/util/stream/ReduceOps$2ReducingSink;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final synthetic end()V
    .locals 0

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method
