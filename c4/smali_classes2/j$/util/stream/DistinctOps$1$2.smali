.class final Lj$/util/stream/DistinctOps$1$2;
.super Lj$/util/stream/Sink$ChainedReference;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field seen:Ljava/lang/Object;

.field final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj$/util/stream/DistinctOps$1;Lj$/util/stream/Sink;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/DistinctOps$1$2;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lj$/util/stream/DistinctOps$1$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/IntPipeline$3;Lj$/util/stream/Sink;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lj$/util/stream/DistinctOps$1$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lj$/util/stream/DistinctOps$1$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    new-instance p1, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda6;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/IntPipeline$5;Lj$/util/stream/Sink;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/DistinctOps$1$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lj$/util/stream/DistinctOps$1$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    new-instance p1, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda7;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/IntPipeline$6;Lj$/util/stream/Sink;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lj$/util/stream/DistinctOps$1$2;->$r8$classId:I

    .line 4
    iput-object p1, p0, Lj$/util/stream/DistinctOps$1$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    new-instance p1, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda6;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lj$/util/stream/DoublePipeline$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lj$/util/stream/DistinctOps$1$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/IntPipeline$3;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$3;->val$mapper:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/Function;

    invoke-interface {v0, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/IntStream;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/IntConsumer;

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
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/IntPipeline$5;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$5;->val$mapper:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/Function;

    invoke-interface {v0, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/LongStream;

    if-eqz p1, :cond_2

    :try_start_2
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/LongConsumer;

    invoke-interface {v0, v1}, Lj$/util/stream/LongStream;->forEach(Lj$/util/function/LongConsumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_3
    check-cast p1, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {p1}, Lj$/util/stream/AbstractPipeline;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    throw v0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    check-cast p1, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {p1}, Lj$/util/stream/AbstractPipeline;->close()V

    :cond_3
    return-void

    .line 3
    :pswitch_2
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 4
    :goto_2
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/IntPipeline$6;

    iget-object v0, v0, Lj$/util/stream/IntPipeline$6;->val$mapper:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/Function;

    invoke-interface {v0, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/DoubleStream;

    if-eqz p1, :cond_5

    :try_start_4
    invoke-interface {p1}, Lj$/util/stream/DoubleStream;->sequential()Lj$/util/stream/DoubleStream;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/DoubleConsumer;

    invoke-interface {v0, v1}, Lj$/util/stream/DoubleStream;->forEach(Lj$/util/function/DoubleConsumer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    :try_start_5
    check-cast p1, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {p1}, Lj$/util/stream/AbstractPipeline;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    throw v0

    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    check-cast p1, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {p1}, Lj$/util/stream/AbstractPipeline;->close()V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final begin(J)V
    .locals 2

    iget p1, p0, Lj$/util/stream/DistinctOps$1$2;->$r8$classId:I

    const-wide/16 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p1, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    invoke-interface {p1, v0, v1}, Lj$/util/stream/Sink;->begin(J)V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    invoke-interface {p1, v0, v1}, Lj$/util/stream/Sink;->begin(J)V

    return-void

    .line 3
    :pswitch_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/lang/Object;

    iget-object p1, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    invoke-interface {p1, v0, v1}, Lj$/util/stream/Sink;->begin(J)V

    return-void

    .line 4
    :goto_0
    iget-object p1, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    invoke-interface {p1, v0, v1}, Lj$/util/stream/Sink;->begin(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final end()V
    .locals 1

    iget v0, p0, Lj$/util/stream/DistinctOps$1$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lj$/util/stream/Sink$ChainedReference;->end()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/lang/Object;

    iget-object v0, p0, Lj$/util/stream/Sink$ChainedReference;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->end()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
