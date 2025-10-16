.class final Lj$/util/stream/IntPipeline$1$1;
.super Lj$/util/stream/Sink$ChainedInt;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field final synthetic this$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/Sink;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/IntPipeline$1$1;->$r8$classId:I

    iput-object p1, p0, Lj$/util/stream/IntPipeline$1$1;->this$1:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedInt;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget v0, p0, Lj$/util/stream/IntPipeline$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/IntPipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/IntPipeline$3;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$3;->val$mapper:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/IntFunction;

    invoke-interface {v0, p1}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/IntStream;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->forEach(Lj$/util/function/IntConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    check-cast p1, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {p1}, Lj$/util/stream/AbstractPipeline;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw v0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    check-cast p1, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {p1}, Lj$/util/stream/AbstractPipeline;->close()V

    :cond_1
    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/IntPipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/IntPipeline$6;

    iget-object v1, v1, Lj$/util/stream/IntPipeline$6;->val$mapper:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/IntToDoubleFunction;

    check-cast v1, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v1, p1}, Lj$/util/function/Supplier$VivifiedWrapper;->applyAsDouble(I)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->accept(D)V

    return-void

    .line 3
    :pswitch_2
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/IntPipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/IntPipeline$5;

    iget-object v1, v1, Lj$/util/stream/IntPipeline$5;->val$mapper:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/IntToLongFunction;

    invoke-interface {v1, p1}, Lj$/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->accept(J)V

    return-void

    .line 4
    :pswitch_3
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/IntPipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/IntPipeline$4;

    iget-object v1, v1, Lj$/util/stream/IntPipeline$4;->val$mapper:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/IntFunction;

    invoke-interface {v1, p1}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 5
    :pswitch_4
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/IntPipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/IntPipeline$3;

    iget-object v1, v1, Lj$/util/stream/IntPipeline$3;->val$mapper:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/IntUnaryOperator;

    check-cast v1, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v1, p1}, Lj$/util/function/Supplier$VivifiedWrapper;->applyAsInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(I)V

    return-void

    .line 6
    :pswitch_5
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    int-to-double v1, p1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->accept(D)V

    return-void

    .line 7
    :pswitch_6
    iget-object v0, p0, Lj$/util/stream/IntPipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/IntPipeline$3;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$3;->val$mapper:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/IntConsumer;

    invoke-interface {v0, p1}, Lj$/util/function/IntConsumer;->accept(I)V

    iget-object v0, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(I)V

    return-void

    .line 8
    :pswitch_7
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->accept(J)V

    return-void

    .line 9
    :goto_1
    iget-object v0, p0, Lj$/util/stream/IntPipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/IntPipeline$3;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$3;->val$mapper:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/IntPredicate;

    check-cast v0, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v0, p1}, Lj$/util/function/Supplier$VivifiedWrapper;->test(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(I)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final begin(J)V
    .locals 3

    iget v0, p0, Lj$/util/stream/IntPipeline$1$1;->$r8$classId:I

    const-wide/16 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p1, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    invoke-interface {p1, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    invoke-interface {p1, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->begin(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
