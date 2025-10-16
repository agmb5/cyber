.class abstract Lj$/util/stream/LongPipeline;
.super Lj$/util/stream/AbstractPipeline;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/LongStream;


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method constructor <init>(Lj$/util/Spliterator;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/AbstractPipeline;-><init>(Lj$/util/Spliterator;IZ)V

    return-void
.end method

.method constructor <init>(Lj$/util/stream/AbstractPipeline;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractPipeline;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    return-void
.end method

.method static synthetic access$000(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;
    .locals 0

    invoke-static {p0}, Lj$/util/stream/LongPipeline;->adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method private static adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;
    .locals 1

    instance-of v0, p0, Lj$/util/Spliterator$OfLong;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/Spliterator$OfLong;

    return-object p0

    :cond_0
    sget-boolean p0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz p0, :cond_1

    const-class p0, Lj$/util/stream/AbstractPipeline;

    const-string v0, "using LongStream.adapt(Spliterator<Long> s)"

    invoke-static {p0, v0}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final collect(Lj$/util/function/Supplier;Lj$/util/function/ObjLongConsumer;Lj$/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 6

    new-instance v2, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda2;

    const/4 v0, 0x2

    invoke-direct {v2, p3, v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda2;-><init>(Lj$/util/function/BiConsumer;I)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lj$/util/stream/ReduceOps$1;

    const/4 v1, 0x3

    const/4 v5, 0x1

    move-object v0, p3

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/ReduceOps$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 2
    invoke-virtual {p0, p3}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final evaluateToNode(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0

    invoke-static {p1, p2, p3}, Lj$/util/stream/Nodes;->collectLong(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;Z)Lj$/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public forEach(Lj$/util/function/LongConsumer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/ForEachOps$ForEachOp$OfLong;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/stream/ForEachOps$ForEachOp$OfLong;-><init>(Lj$/util/function/LongConsumer;Z)V

    .line 2
    invoke-virtual {p0, v0}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Lj$/util/function/LongConsumer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/ForEachOps$ForEachOp$OfLong;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/ForEachOps$ForEachOp$OfLong;-><init>(Lj$/util/function/LongConsumer;Z)V

    .line 2
    invoke-virtual {p0, v0}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method final forEachWithCancel(Lj$/util/Spliterator;Lj$/util/stream/Sink;)V
    .locals 2

    invoke-static {p1}, Lj$/util/stream/LongPipeline;->adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;

    move-result-object p1

    .line 1
    instance-of v0, p2, Lj$/util/function/LongConsumer;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lj$/util/function/LongConsumer;

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda7;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    .line 2
    :cond_1
    :goto_0
    invoke-interface {p2}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Lj$/util/Spliterator$OfLong;->tryAdvance(Lj$/util/function/LongConsumer;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_2
    return-void

    .line 3
    :cond_3
    const-class p1, Lj$/util/stream/AbstractPipeline;

    const-string p2, "using LongStream.adapt(Sink<Long> s)"

    invoke-static {p1, p2}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method final getOutputShape$enumunboxing$()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/LongPipeline;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfLong;)Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method final makeNodeBuilder(JLj$/util/function/IntFunction;)Lj$/util/stream/Node$Builder;
    .locals 0

    invoke-static {p1, p2}, Lj$/util/stream/Nodes;->longBuilder(J)Lj$/util/stream/Node$Builder$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lj$/util/function/LongUnaryOperator;)Lj$/util/stream/LongStream;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lj$/util/stream/IntPipeline$5;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v3, v0, v1

    const/4 v2, 0x3

    const/4 v5, 0x2

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/IntPipeline$5;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    return-object v6
.end method

.method public final mapToObj(Lj$/util/function/LongFunction;)Lj$/util/stream/Stream;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lj$/util/stream/IntPipeline$4;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v3, v0, v1

    const/4 v2, 0x3

    const/4 v5, 0x2

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/IntPipeline$4;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    return-object v6
.end method

.method public final reduce(JLj$/util/function/LongBinaryOperator;)J
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/ReduceOps$8;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p3, p1, p2}, Lj$/util/stream/ReduceOps$8;-><init>(ILj$/util/function/LongBinaryOperator;J)V

    .line 2
    invoke-virtual {p0, v0}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public final reduce(Lj$/util/function/LongBinaryOperator;)Lj$/util/OptionalLong;
    .locals 2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/ReduceOps$2;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, v1}, Lj$/util/stream/ReduceOps$2;-><init>(ILjava/lang/Object;I)V

    .line 4
    invoke-virtual {p0, v0}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/OptionalLong;

    return-object p1
.end method

.method public final spliterator()Lj$/util/Spliterator$OfLong;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/AbstractPipeline;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/LongPipeline;->adapt(Lj$/util/Spliterator;)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/LongPipeline;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final sum()J
    .locals 3

    sget-object v0, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$16:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lj$/util/stream/LongPipeline;->reduce(JLj$/util/function/LongBinaryOperator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final unordered()Lj$/util/stream/BaseStream;
    .locals 4

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/stream/IntPipeline$1;

    const/4 v1, 0x3

    sget v2, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lj$/util/stream/IntPipeline$1;-><init>(Lj$/util/stream/AbstractPipeline;III)V

    :goto_0
    return-object v0
.end method

.method final wrap(Lj$/util/stream/Node$-CC;Lj$/util/function/Supplier;Z)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Lj$/util/stream/Node$-CC;Lj$/util/function/Supplier;Z)V

    return-object v0
.end method
