.class final Lj$/util/stream/ReduceOps$2;
.super Lj$/util/stream/ReduceOps$ReduceOp;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field final synthetic val$operator:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/ReduceOps$2;->$r8$classId:I

    iput-object p2, p0, Lj$/util/stream/ReduceOps$2;->val$operator:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lj$/util/stream/ReduceOps$ReduceOp;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final makeSink()Lj$/util/stream/ReduceOps$AccumulatingSink;
    .locals 2

    iget v0, p0, Lj$/util/stream/ReduceOps$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance v0, Lj$/util/stream/ReduceOps$6ReducingSink;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$2;->val$operator:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/IntBinaryOperator;

    invoke-direct {v0, v1}, Lj$/util/stream/ReduceOps$6ReducingSink;-><init>(Lj$/util/function/IntBinaryOperator;)V

    return-object v0

    .line 2
    :pswitch_1
    new-instance v0, Lj$/util/stream/ReduceOps$12ReducingSink;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$2;->val$operator:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/DoubleBinaryOperator;

    invoke-direct {v0, v1}, Lj$/util/stream/ReduceOps$12ReducingSink;-><init>(Lj$/util/function/DoubleBinaryOperator;)V

    return-object v0

    .line 3
    :pswitch_2
    new-instance v0, Lj$/util/stream/ReduceOps$2ReducingSink;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$2;->val$operator:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/BinaryOperator;

    invoke-direct {v0, v1}, Lj$/util/stream/ReduceOps$2ReducingSink;-><init>(Lj$/util/function/BinaryOperator;)V

    return-object v0

    .line 4
    :goto_0
    new-instance v0, Lj$/util/stream/ReduceOps$9ReducingSink;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$2;->val$operator:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/LongBinaryOperator;

    invoke-direct {v0, v1}, Lj$/util/stream/ReduceOps$9ReducingSink;-><init>(Lj$/util/function/LongBinaryOperator;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
