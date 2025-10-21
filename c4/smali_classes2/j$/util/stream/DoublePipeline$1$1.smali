.class final Lj$/util/stream/DoublePipeline$1$1;
.super Lj$/util/stream/Sink$ChainedDouble;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field final synthetic this$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/Sink;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/DoublePipeline$1$1;->$r8$classId:I

    iput-object p1, p0, Lj$/util/stream/DoublePipeline$1$1;->this$1:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedDouble;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 2

    iget v0, p0, Lj$/util/stream/DoublePipeline$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/IntPipeline$6;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$6;->val$mapper:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/DoublePredicate;

    check-cast v0, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v0, p1, p2}, Lj$/util/function/Supplier$VivifiedWrapper;->test(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/Sink$ChainedDouble;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->accept(D)V

    :cond_0
    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/IntPipeline$6;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$6;->val$mapper:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/DoubleFunction;

    invoke-interface {v0, p1, p2}, Lj$/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/DoubleStream;

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lj$/util/stream/DoubleStream;->sequential()Lj$/util/stream/DoubleStream;

    move-result-object p2

    new-instance v0, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p2, v0}, Lj$/util/stream/DoubleStream;->forEach(Lj$/util/function/DoubleConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_1
    check-cast p1, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {p1}, Lj$/util/stream/AbstractPipeline;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw p2

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    check-cast p1, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {p1}, Lj$/util/stream/AbstractPipeline;->close()V

    :cond_2
    return-void

    .line 3
    :pswitch_2
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedDouble;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/DoublePipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/IntPipeline$5;

    iget-object v1, v1, Lj$/util/stream/IntPipeline$5;->val$mapper:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/DoubleToLongFunction;

    invoke-interface {v1, p1, p2}, Lj$/util/function/DoubleToLongFunction;->applyAsLong(D)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->accept(J)V

    return-void

    .line 4
    :pswitch_3
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedDouble;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/DoublePipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/IntPipeline$3;

    iget-object v1, v1, Lj$/util/stream/IntPipeline$3;->val$mapper:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/DoubleToIntFunction;

    check-cast v1, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v1, p1, p2}, Lj$/util/function/Supplier$VivifiedWrapper;->applyAsInt(D)I

    move-result p1

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(I)V

    return-void

    .line 5
    :pswitch_4
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedDouble;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/DoublePipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/IntPipeline$4;

    iget-object v1, v1, Lj$/util/stream/IntPipeline$4;->val$mapper:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/DoubleFunction;

    invoke-interface {v1, p1, p2}, Lj$/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 6
    :pswitch_5
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedDouble;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/DoublePipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/IntPipeline$6;

    iget-object v1, v1, Lj$/util/stream/IntPipeline$6;->val$mapper:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/DoubleUnaryOperator;

    check-cast v1, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v1, p1, p2}, Lj$/util/function/Supplier$VivifiedWrapper;->applyAsDouble(D)D

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->accept(D)V

    return-void

    .line 7
    :goto_1
    iget-object v0, p0, Lj$/util/stream/DoublePipeline$1$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/IntPipeline$6;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$6;->val$mapper:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Lj$/util/function/DoubleConsumer;->accept(D)V

    iget-object v0, p0, Lj$/util/stream/Sink$ChainedDouble;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->accept(D)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    iget v0, p0, Lj$/util/stream/DoublePipeline$1$1;->$r8$classId:I

    const-wide/16 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p1, p0, Lj$/util/stream/Sink$ChainedDouble;->downstream:Lj$/util/stream/Sink;

    invoke-interface {p1, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Lj$/util/stream/Sink$ChainedDouble;->downstream:Lj$/util/stream/Sink;

    invoke-interface {p1, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedDouble;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->begin(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
