.class final Lj$/util/stream/ReduceOps$1;
.super Lj$/util/stream/ReduceOps$ReduceOp;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field final synthetic val$combiner:Ljava/lang/Object;

.field final synthetic val$reducer:Ljava/lang/Object;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lj$/util/stream/ReduceOps$1;->$r8$classId:I

    iput-object p2, p0, Lj$/util/stream/ReduceOps$1;->val$combiner:Ljava/lang/Object;

    iput-object p3, p0, Lj$/util/stream/ReduceOps$1;->val$reducer:Ljava/lang/Object;

    iput-object p4, p0, Lj$/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lj$/util/stream/ReduceOps$ReduceOp;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final makeSink()Lj$/util/stream/ReduceOps$AccumulatingSink;
    .locals 4

    iget v0, p0, Lj$/util/stream/ReduceOps$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance v0, Lj$/util/stream/ReduceOps$4ReducingSink;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/Supplier;

    iget-object v2, p0, Lj$/util/stream/ReduceOps$1;->val$reducer:Ljava/lang/Object;

    check-cast v2, Lj$/util/function/BiConsumer;

    iget-object v3, p0, Lj$/util/stream/ReduceOps$1;->val$combiner:Ljava/lang/Object;

    check-cast v3, Lj$/util/function/BiConsumer;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/ReduceOps$4ReducingSink;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)V

    return-object v0

    .line 2
    :pswitch_1
    new-instance v0, Lj$/util/stream/ReduceOps$13ReducingSink;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/Supplier;

    iget-object v2, p0, Lj$/util/stream/ReduceOps$1;->val$reducer:Ljava/lang/Object;

    check-cast v2, Lj$/util/function/ObjDoubleConsumer;

    iget-object v3, p0, Lj$/util/stream/ReduceOps$1;->val$combiner:Ljava/lang/Object;

    check-cast v3, Lj$/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/ReduceOps$13ReducingSink;-><init>(Lj$/util/function/Supplier;Lj$/util/function/ObjDoubleConsumer;Lj$/util/function/BinaryOperator;)V

    return-object v0

    .line 3
    :pswitch_2
    new-instance v0, Lj$/util/stream/ReduceOps$10ReducingSink;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/Supplier;

    iget-object v2, p0, Lj$/util/stream/ReduceOps$1;->val$reducer:Ljava/lang/Object;

    check-cast v2, Lj$/util/function/ObjLongConsumer;

    iget-object v3, p0, Lj$/util/stream/ReduceOps$1;->val$combiner:Ljava/lang/Object;

    check-cast v3, Lj$/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/ReduceOps$10ReducingSink;-><init>(Lj$/util/function/Supplier;Lj$/util/function/ObjLongConsumer;Lj$/util/function/BinaryOperator;)V

    return-object v0

    .line 4
    :pswitch_3
    new-instance v0, Lj$/util/stream/ReduceOps$1ReducingSink;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    iget-object v2, p0, Lj$/util/stream/ReduceOps$1;->val$reducer:Ljava/lang/Object;

    check-cast v2, Lj$/util/function/BiFunction;

    iget-object v3, p0, Lj$/util/stream/ReduceOps$1;->val$combiner:Ljava/lang/Object;

    check-cast v3, Lj$/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/ReduceOps$1ReducingSink;-><init>(Ljava/lang/Object;Lj$/util/function/BiFunction;Lj$/util/function/BinaryOperator;)V

    return-object v0

    .line 5
    :goto_0
    new-instance v0, Lj$/util/stream/ReduceOps$7ReducingSink;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/Supplier;

    iget-object v2, p0, Lj$/util/stream/ReduceOps$1;->val$reducer:Ljava/lang/Object;

    check-cast v2, Lj$/util/function/ObjIntConsumer;

    iget-object v3, p0, Lj$/util/stream/ReduceOps$1;->val$combiner:Ljava/lang/Object;

    check-cast v3, Lj$/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/ReduceOps$7ReducingSink;-><init>(Lj$/util/function/Supplier;Lj$/util/function/ObjIntConsumer;Lj$/util/function/BinaryOperator;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
