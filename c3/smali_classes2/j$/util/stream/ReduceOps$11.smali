.class final Lj$/util/stream/ReduceOps$11;
.super Lj$/util/stream/ReduceOps$ReduceOp;
.source "SourceFile"


# instance fields
.field final synthetic val$identity:D

.field final synthetic val$operator:Lj$/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(ILj$/util/function/DoubleBinaryOperator;D)V
    .locals 0

    iput-object p2, p0, Lj$/util/stream/ReduceOps$11;->val$operator:Lj$/util/function/DoubleBinaryOperator;

    iput-wide p3, p0, Lj$/util/stream/ReduceOps$11;->val$identity:D

    invoke-direct {p0, p1}, Lj$/util/stream/ReduceOps$ReduceOp;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final makeSink()Lj$/util/stream/ReduceOps$AccumulatingSink;
    .locals 4

    new-instance v0, Lj$/util/stream/ReduceOps$11ReducingSink;

    iget-wide v1, p0, Lj$/util/stream/ReduceOps$11;->val$identity:D

    iget-object v3, p0, Lj$/util/stream/ReduceOps$11;->val$operator:Lj$/util/function/DoubleBinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/ReduceOps$11ReducingSink;-><init>(DLj$/util/function/DoubleBinaryOperator;)V

    return-object v0
.end method
