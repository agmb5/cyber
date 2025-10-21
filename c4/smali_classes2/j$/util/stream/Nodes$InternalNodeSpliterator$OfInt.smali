.class final Lj$/util/stream/Nodes$InternalNodeSpliterator$OfInt;
.super Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator$OfInt;


# direct methods
.method constructor <init>(Lj$/util/stream/Node$OfInt;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;-><init>(Lj$/util/stream/Node$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public final synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic tryAdvance(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
