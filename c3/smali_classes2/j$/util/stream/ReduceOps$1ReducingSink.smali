.class final Lj$/util/stream/ReduceOps$1ReducingSink;
.super Lj$/util/stream/ReduceOps$Box;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/ReduceOps$AccumulatingSink;


# instance fields
.field final synthetic val$combiner:Lj$/util/function/BinaryOperator;

.field final synthetic val$reducer:Lj$/util/function/BiFunction;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lj$/util/function/BiFunction;Lj$/util/function/BinaryOperator;)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/ReduceOps$1ReducingSink;->val$seed:Ljava/lang/Object;

    iput-object p2, p0, Lj$/util/stream/ReduceOps$1ReducingSink;->val$reducer:Lj$/util/function/BiFunction;

    iput-object p3, p0, Lj$/util/stream/ReduceOps$1ReducingSink;->val$combiner:Lj$/util/function/BinaryOperator;

    invoke-direct {p0}, Lj$/util/stream/ReduceOps$Box;-><init>()V

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

    iget-object v0, p0, Lj$/util/stream/ReduceOps$1ReducingSink;->val$reducer:Lj$/util/function/BiFunction;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lj$/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    return-void
.end method

.method public final begin(J)V
    .locals 0

    iget-object p1, p0, Lj$/util/stream/ReduceOps$1ReducingSink;->val$seed:Ljava/lang/Object;

    iput-object p1, p0, Lj$/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    return-void
.end method

.method public final synthetic cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final combine(Lj$/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 2

    check-cast p1, Lj$/util/stream/ReduceOps$1ReducingSink;

    iget-object v0, p0, Lj$/util/stream/ReduceOps$1ReducingSink;->val$combiner:Lj$/util/function/BinaryOperator;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    iget-object p1, p1, Lj$/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lj$/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lj$/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    return-void
.end method

.method public final synthetic end()V
    .locals 0

    return-void
.end method
