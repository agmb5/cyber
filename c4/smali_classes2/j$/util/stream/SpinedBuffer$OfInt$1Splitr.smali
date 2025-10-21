.class final Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;
.super Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator$OfInt;


# instance fields
.field final synthetic this$0:Lj$/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor <init>(Lj$/util/stream/SpinedBuffer$OfInt;IIII)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer$OfInt;

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Lj$/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    return-void
.end method


# virtual methods
.method final arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, [I

    check-cast p3, Lj$/util/function/IntConsumer;

    aget p1, p1, p2

    invoke-interface {p3, p1}, Lj$/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method final arraySpliterator(Ljava/lang/Object;II)Lj$/util/Spliterator$OfPrimitive;
    .locals 0

    check-cast p1, [I

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Lj$/util/Spliterators;->spliterator([III)Lj$/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)V

    return-void
.end method

.method final newSpliterator(IIII)Lj$/util/Spliterator$OfPrimitive;
    .locals 7

    new-instance v6, Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;

    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;->this$0:Lj$/util/stream/SpinedBuffer$OfInt;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/SpinedBuffer$OfInt$1Splitr;-><init>(Lj$/util/stream/SpinedBuffer$OfInt;IIII)V

    return-object v6
.end method

.method public final synthetic tryAdvance(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
