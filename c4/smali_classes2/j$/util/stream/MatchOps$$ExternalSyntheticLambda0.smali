.class public final synthetic Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Consumer;
.implements Lj$/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 1
    :sswitch_0
    iget-object v0, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/BiConsumer;

    iget-object v1, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    sget v2, Lj$/util/stream/ReferencePipeline;->$r8$clinit:I

    .line 2
    invoke-interface {v0, v1, p1}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :sswitch_1
    iget-object v0, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap;

    sget v2, Lj$/util/stream/DistinctOps$1;->$r8$clinit:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 5
    :goto_1
    iget-object v0, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;

    iget-object v1, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/Consumer;

    invoke-virtual {v0, v1, p1}, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->lambda$forEachRemaining$0$java-util-stream-StreamSpliterators$DistinctSpliterator(Lj$/util/function/Consumer;Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/LongPredicate;

    .line 2
    new-instance v2, Lj$/util/stream/MatchOps$3MatchSink;

    invoke-direct {v2, v0, v1}, Lj$/util/stream/MatchOps$3MatchSink;-><init>(Lj$/util/stream/MatchOps$MatchKind;Lj$/util/function/LongPredicate;)V

    return-object v2

    .line 3
    :pswitch_2
    iget-object v0, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/IntPredicate;

    .line 4
    new-instance v2, Lj$/util/stream/MatchOps$2MatchSink;

    invoke-direct {v2, v0, v1}, Lj$/util/stream/MatchOps$2MatchSink;-><init>(Lj$/util/stream/MatchOps$MatchKind;Lj$/util/function/IntPredicate;)V

    return-object v2

    .line 5
    :pswitch_3
    iget-object v0, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/DoublePredicate;

    .line 6
    new-instance v2, Lj$/util/stream/MatchOps$4MatchSink;

    invoke-direct {v2, v0, v1}, Lj$/util/stream/MatchOps$4MatchSink;-><init>(Lj$/util/stream/MatchOps$MatchKind;Lj$/util/function/DoublePredicate;)V

    return-object v2

    .line 7
    :goto_0
    iget-object v0, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lj$/util/function/Predicate;

    .line 8
    new-instance v2, Lj$/util/stream/MatchOps$1MatchSink;

    invoke-direct {v2, v0, v1}, Lj$/util/stream/MatchOps$1MatchSink;-><init>(Lj$/util/stream/MatchOps$MatchKind;Lj$/util/function/Predicate;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
