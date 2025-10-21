.class abstract Lj$/util/stream/ReferencePipeline;
.super Lj$/util/stream/AbstractPipeline;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Stream;


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method constructor <init>(Lj$/util/Spliterator;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/AbstractPipeline;-><init>(Lj$/util/Spliterator;IZ)V

    return-void
.end method

.method constructor <init>(Lj$/util/stream/AbstractPipeline;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/AbstractPipeline;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    return-void
.end method


# virtual methods
.method public final distinct()Lj$/util/stream/Stream;
    .locals 3

    new-instance v0, Lj$/util/stream/DistinctOps$1;

    sget v1, Lj$/util/stream/StreamOpFlag;->IS_DISTINCT:I

    sget v2, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Lj$/util/stream/DistinctOps$1;-><init>(Lj$/util/stream/AbstractPipeline;II)V

    return-object v0
.end method

.method final evaluateToNode(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lj$/util/stream/Nodes;->collect(Lj$/util/stream/Node$-CC;Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method public forEach(Lj$/util/function/Consumer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/ForEachOps$ForEachOp$OfRef;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/stream/ForEachOps$ForEachOp$OfRef;-><init>(Lj$/util/function/Consumer;Z)V

    .line 2
    invoke-virtual {p0, v0}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Lj$/util/function/Consumer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/ForEachOps$ForEachOp$OfRef;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/ForEachOps$ForEachOp$OfRef;-><init>(Lj$/util/function/Consumer;Z)V

    .line 2
    invoke-virtual {p0, v0}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method final forEachWithCancel(Lj$/util/Spliterator;Lj$/util/stream/Sink;)V
    .locals 1

    :cond_0
    invoke-interface {p2}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lj$/util/Spliterator;->tryAdvance(Lj$/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method final getOutputShape$enumunboxing$()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final makeNodeBuilder(JLj$/util/function/IntFunction;)Lj$/util/stream/Node$Builder;
    .locals 0

    invoke-static {p1, p2, p3}, Lj$/util/stream/Nodes;->builder(JLj$/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mapToDouble(Lj$/util/function/ToDoubleFunction;)Lj$/util/stream/DoubleStream;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lj$/util/stream/IntPipeline$6;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v3, v0, v1

    const/4 v2, 0x1

    const/4 v5, 0x6

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/IntPipeline$6;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    return-object v6
.end method

.method public final mapToInt(Lj$/util/function/ToIntFunction;)Lj$/util/stream/IntStream;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lj$/util/stream/IntPipeline$3;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v3, v0, v1

    const/4 v2, 0x1

    const/4 v5, 0x6

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/IntPipeline$3;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    return-object v6
.end method

.method public final mapToLong(Lj$/util/function/ToLongFunction;)Lj$/util/stream/LongStream;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lj$/util/stream/IntPipeline$5;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v3, v0, v1

    const/4 v2, 0x1

    const/4 v5, 0x7

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/IntPipeline$5;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    return-object v6
.end method

.method public final reduce(Lj$/util/function/BinaryOperator;)Lj$/util/Optional;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/ReduceOps$2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/ReduceOps$2;-><init>(ILjava/lang/Object;I)V

    .line 2
    invoke-virtual {p0, v0}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/Optional;

    return-object p1
.end method

.method public final unordered()Lj$/util/stream/BaseStream;
    .locals 3

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/stream/ReferencePipeline$1;

    const/4 v1, 0x1

    sget v2, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/ReferencePipeline$1;-><init>(Lj$/util/stream/AbstractPipeline;II)V

    :goto_0
    return-object v0
.end method

.method final wrap(Lj$/util/stream/Node$-CC;Lj$/util/function/Supplier;Z)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/StreamSpliterators$WrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/StreamSpliterators$WrappingSpliterator;-><init>(Lj$/util/stream/Node$-CC;Lj$/util/function/Supplier;Z)V

    return-object v0
.end method
