.class public final synthetic Lj$/util/stream/LongStream$Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/stream/LongStream;


# instance fields
.field final synthetic wrappedValue:Lj$/util/stream/LongStream;


# direct methods
.method private synthetic constructor <init>(Lj$/util/stream/LongStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    return-void
.end method

.method public static synthetic convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/stream/LongStream$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/stream/LongStream$Wrapper;-><init>(Lj$/util/stream/LongStream;)V

    return-object v0
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/LongPredicate;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/LongPredicate;)Lj$/util/function/LongPredicate;

    move-result-object p1

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lj$/util/stream/MatchOps$MatchKind;->ALL:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v1}, Lj$/util/stream/Node$-CC;->makeLong(Lj$/util/function/LongPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final anyMatch(Ljava/util/function/LongPredicate;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/LongPredicate;)Lj$/util/function/LongPredicate;

    move-result-object p1

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lj$/util/stream/MatchOps$MatchKind;->ANY:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v1}, Lj$/util/stream/Node$-CC;->makeLong(Lj$/util/function/LongPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final asDoubleStream()Ljava/util/stream/DoubleStream;
    .locals 5

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v1, Lj$/util/stream/IntPipeline$2;

    sget v2, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v3, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-direct {v1, v0, v3, v2, v4}, Lj$/util/stream/IntPipeline$2;-><init>(Lj$/util/stream/AbstractPipeline;III)V

    .line 2
    invoke-static {v1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final average()Ljava/util/OptionalDouble;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    .line 1
    sget-object v1, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;->INSTANCE:Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;

    sget-object v2, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE$8:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    sget-object v3, Lj$/util/stream/FindOps$$ExternalSyntheticLambda6;->INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v1, v2, v3}, Lj$/util/stream/LongPipeline;->collect(Lj$/util/function/Supplier;Lj$/util/function/ObjLongConsumer;Lj$/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    long-to-double v2, v2

    aget-wide v4, v0, v1

    long-to-double v0, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lj$/util/OptionalDouble;->of(D)Lj$/util/OptionalDouble;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v0

    .line 2
    :goto_0
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalDouble;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final boxed()Ljava/util/stream/Stream;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    .line 1
    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$17:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lj$/util/stream/LongPipeline;->mapToObj(Lj$/util/function/LongFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->close()V

    return-void
.end method

.method public final synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/Supplier;)Lj$/util/function/Supplier;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x18

    invoke-direct {v1, p2, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p2, v1

    .line 2
    :goto_0
    invoke-static {p3}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p3

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0, p1, p2, p3}, Lj$/util/stream/LongPipeline;->collect(Lj$/util/function/Supplier;Lj$/util/function/ObjLongConsumer;Lj$/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final count()J
    .locals 2

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$18:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lj$/util/stream/LongPipeline;->map(Lj$/util/function/LongUnaryOperator;)Lj$/util/stream/LongStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Lj$/util/stream/LongPipeline;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava/util/stream/LongStream;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    .line 1
    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$17:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lj$/util/stream/LongPipeline;->mapToObj(Lj$/util/function/LongFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 2
    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Lj$/util/stream/ReferencePipeline;->distinct()Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$15:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0, v1}, Lj$/util/stream/ReferencePipeline;->mapToLong(Lj$/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/LongPredicate;)Lj$/util/function/LongPredicate;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/LongPipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$5;

    sget v4, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    const/4 v3, 0x3

    const/4 v6, 0x4

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/IntPipeline$5;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 2
    invoke-static {p1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public final findAny()Ljava/util/OptionalLong;
    .locals 8

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v7, Lj$/util/stream/FindOps$FindOp;

    invoke-static {}, Lj$/util/OptionalLong;->empty()Lj$/util/OptionalLong;

    move-result-object v4

    sget-object v5, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    sget-object v6, Lj$/util/stream/FindOps$$ExternalSyntheticLambda6;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/FindOps$FindOp;-><init>(ZILjava/lang/Object;Lj$/util/function/Predicate;Lj$/util/function/Supplier;)V

    .line 2
    invoke-virtual {v0, v7}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalLong;

    .line 3
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalLong;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final findFirst()Ljava/util/OptionalLong;
    .locals 8

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v7, Lj$/util/stream/FindOps$FindOp;

    invoke-static {}, Lj$/util/OptionalLong;->empty()Lj$/util/OptionalLong;

    move-result-object v4

    sget-object v5, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    sget-object v6, Lj$/util/stream/FindOps$$ExternalSyntheticLambda6;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda6;

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/FindOps$FindOp;-><init>(ZILjava/lang/Object;Lj$/util/function/Predicate;Lj$/util/function/Supplier;)V

    .line 2
    invoke-virtual {v0, v7}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalLong;

    .line 3
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalLong;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;
    .locals 9

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v7, p1

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x11

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object v7, v1

    .line 2
    :goto_0
    move-object v4, v0

    check-cast v4, Lj$/util/stream/LongPipeline;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance p1, Lj$/util/stream/IntPipeline$5;

    const/4 v5, 0x3

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v6, v0, v1

    const/4 v8, 0x3

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/IntPipeline$5;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 4
    invoke-static {p1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic forEach(Ljava/util/function/LongConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    invoke-static {p1}, Lj$/util/function/LongConsumer$VivifiedWrapper;->convert(Ljava/util/function/LongConsumer;)Lj$/util/function/LongConsumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/LongStream;->forEach(Lj$/util/function/LongConsumer;)V

    return-void
.end method

.method public final synthetic forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    invoke-static {p1}, Lj$/util/function/LongConsumer$VivifiedWrapper;->convert(Ljava/util/function/LongConsumer;)Lj$/util/function/LongConsumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/LongStream;->forEachOrdered(Lj$/util/function/LongConsumer;)V

    return-void
.end method

.method public final synthetic isParallel()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Lj$/util/stream/LongPipeline;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/PrimitiveIterator$OfLong;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    .line 1
    invoke-virtual {v0}, Lj$/util/stream/LongPipeline;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfLong;)Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/PrimitiveIterator$OfLong$Wrapper;->convert(Lj$/util/PrimitiveIterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final limit(J)Ljava/util/stream/LongStream;
    .locals 4

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 1
    invoke-static {v0, v1, v2, p1, p2}, Lj$/util/stream/Node$-CC;->makeLong(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/LongStream;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x15

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v1

    .line 2
    :goto_0
    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/LongPipeline;->map(Lj$/util/function/LongUnaryOperator;)Lj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public final mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 9

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v7, p1

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x13

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object v7, v1

    .line 2
    :goto_0
    move-object v4, v0

    check-cast v4, Lj$/util/stream/LongPipeline;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$6;

    const/4 v5, 0x3

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v6, v0, v1

    const/4 v8, 0x5

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/IntPipeline$6;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 4
    invoke-static {p1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;
    .locals 9

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v7, p1

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x14

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object v7, v1

    .line 2
    :goto_0
    move-object v4, v0

    check-cast v4, Lj$/util/stream/LongPipeline;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$3;

    const/4 v5, 0x3

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v6, v0, v1

    const/4 v8, 0x5

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/IntPipeline$3;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 4
    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x11

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v1

    .line 2
    :goto_0
    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/LongPipeline;->mapToObj(Lj$/util/function/LongFunction;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final max()Ljava/util/OptionalLong;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    .line 1
    sget-object v1, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE$9:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Lj$/util/stream/LongPipeline;->reduce(Lj$/util/function/LongBinaryOperator;)Lj$/util/OptionalLong;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalLong;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final min()Ljava/util/OptionalLong;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    .line 1
    sget-object v1, Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;->INSTANCE$6:Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Lj$/util/stream/LongPipeline;->reduce(Lj$/util/function/LongBinaryOperator;)Lj$/util/OptionalLong;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalLong;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/LongPredicate;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/LongPredicate;)Lj$/util/function/LongPredicate;

    move-result-object p1

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lj$/util/stream/MatchOps$MatchKind;->NONE:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v1}, Lj$/util/stream/Node$-CC;->makeLong(Lj$/util/function/LongPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final synthetic onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic parallel()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->parallel()Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic parallel()Ljava/util/stream/LongStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    invoke-interface {v0}, Lj$/util/stream/LongStream;->parallel()Lj$/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    invoke-static {p1}, Lj$/util/function/LongConsumer$VivifiedWrapper;->convert(Ljava/util/function/LongConsumer;)Lj$/util/function/LongConsumer;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/LongPipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$5;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x5

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/IntPipeline$5;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 2
    invoke-static {p1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic reduce(JLjava/util/function/LongBinaryOperator;)J
    .locals 3

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x10

    invoke-direct {v1, p3, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p3, v1

    .line 2
    :goto_0
    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0, p1, p2, p3}, Lj$/util/stream/LongPipeline;->reduce(JLj$/util/function/LongBinaryOperator;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x10

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v1

    .line 4
    :goto_0
    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/LongPipeline;->reduce(Lj$/util/function/LongBinaryOperator;)Lj$/util/OptionalLong;

    move-result-object p1

    invoke-static {p1}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalLong;)Ljava/util/OptionalLong;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic sequential()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->sequential()Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic sequential()Ljava/util/stream/LongStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    invoke-interface {v0}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final skip(J)Ljava/util/stream/LongStream;
    .locals 4

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    .line 1
    invoke-static {v0, p1, p2, v1, v2}, Lj$/util/stream/Node$-CC;->makeLong(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/LongStream;

    move-result-object v0

    .line 2
    :goto_0
    invoke-static {v0}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Ljava/util/stream/LongStream;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v1, Lj$/util/stream/SortedOps$OfLong;

    invoke-direct {v1, v0}, Lj$/util/stream/SortedOps$OfLong;-><init>(Lj$/util/stream/AbstractPipeline;)V

    .line 2
    invoke-static {v1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator$OfLong;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Lj$/util/stream/LongPipeline;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$OfLong$Wrapper;->convert(Lj$/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    .line 1
    invoke-virtual {v0}, Lj$/util/stream/LongPipeline;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic sum()J
    .locals 2

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Lj$/util/stream/LongPipeline;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Ljava/util/LongSummaryStatistics;
    .locals 4

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    .line 1
    sget-object v1, Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;->INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;

    sget-object v2, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$14:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    sget-object v3, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;->INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;

    invoke-virtual {v0, v1, v2, v3}, Lj$/util/stream/LongPipeline;->collect(Lj$/util/function/Supplier;Lj$/util/function/ObjLongConsumer;Lj$/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/LongSummaryStatistics;

    .line 2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Java 8+ API desugaring (library desugaring) cannot convert to java.util.LongSummaryStatistics"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toArray()[J
    .locals 2

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    sget-object v1, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;->INSTANCE$2:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lj$/util/stream/AbstractPipeline;->evaluateToArrayNode(Lj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node$OfLong;

    invoke-static {v0}, Lj$/util/stream/Nodes;->flattenLong(Lj$/util/stream/Node$OfLong;)Lj$/util/stream/Node$OfLong;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Node$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public final synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/LongStream$Wrapper;->wrappedValue:Lj$/util/stream/LongStream;

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Lj$/util/stream/LongPipeline;->unordered()Lj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method
