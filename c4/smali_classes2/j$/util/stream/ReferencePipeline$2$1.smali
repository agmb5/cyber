.class final Lj$/util/stream/ReferencePipeline$2$1;
.super Lj$/util/stream/Sink$ChainedReference;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field final synthetic this$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/Sink;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/ReferencePipeline$2$1;->$r8$classId:I

    iput-object p1, p0, Lj$/util/stream/ReferencePipeline$2$1;->this$1:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lj$/util/stream/ReferencePipeline$2$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/ReferencePipeline$2$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/IntPipeline$6;

    iget-object v1, v1, Lj$/util/stream/IntPipeline$6;->val$mapper:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/ToDoubleFunction;

    invoke-interface {v1, p1}, Lj$/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->accept(D)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/ReferencePipeline$2$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/IntPipeline$5;

    iget-object v1, v1, Lj$/util/stream/IntPipeline$5;->val$mapper:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/ToLongFunction;

    invoke-interface {v1, p1}, Lj$/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->accept(J)V

    return-void

    .line 3
    :pswitch_2
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/ReferencePipeline$2$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/IntPipeline$3;

    iget-object v1, v1, Lj$/util/stream/IntPipeline$3;->val$mapper:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/ToIntFunction;

    invoke-interface {v1, p1}, Lj$/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(I)V

    return-void

    .line 4
    :pswitch_3
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/ReferencePipeline$2$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/ReferencePipeline$3;

    iget-object v1, v1, Lj$/util/stream/ReferencePipeline$3;->val$mapper:Lj$/util/function/Function;

    invoke-interface {v1, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 5
    :pswitch_4
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$2$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/IntPipeline$4;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$4;->val$mapper:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/Consumer;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 6
    :pswitch_5
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$2$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/IntPipeline$4;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$4;->val$mapper:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/Predicate;

    invoke-interface {v0, p1}, Lj$/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 7
    :goto_0
    iget-object v0, p0, Lj$/util/stream/ReferencePipeline$2$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/ReferencePipeline$3;

    iget-object v0, v0, Lj$/util/stream/ReferencePipeline$3;->val$mapper:Lj$/util/function/Function;

    invoke-interface {v0, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    if-eqz p1, :cond_1

    :try_start_0
    move-object v0, p1

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->sequential()Lj$/util/stream/BaseStream;

    check-cast v0, Lj$/util/stream/Stream;

    iget-object v1, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Lj$/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    check-cast p1, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {p1}, Lj$/util/stream/AbstractPipeline;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw v0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    check-cast p1, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {p1}, Lj$/util/stream/AbstractPipeline;->close()V

    :cond_2
    return-void

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

    iget v0, p0, Lj$/util/stream/ReferencePipeline$2$1;->$r8$classId:I

    const-wide/16 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1
    :sswitch_0
    iget-object p1, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    invoke-interface {p1, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    return-void

    .line 2
    :sswitch_1
    iget-object p1, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    invoke-interface {p1, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->begin(J)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
