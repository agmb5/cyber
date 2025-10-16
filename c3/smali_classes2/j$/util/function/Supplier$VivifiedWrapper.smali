.class public final synthetic Lj$/util/function/Supplier$VivifiedWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/BiConsumer;
.implements Lj$/util/function/BiFunction;
.implements Lj$/util/function/BinaryOperator;
.implements Lj$/util/function/DoubleBinaryOperator;
.implements Lj$/util/function/DoubleFunction;
.implements Lj$/util/function/DoublePredicate;
.implements Lj$/util/function/DoubleToIntFunction;
.implements Lj$/util/function/DoubleToLongFunction;
.implements Lj$/util/function/DoubleUnaryOperator;
.implements Lj$/util/function/IntBinaryOperator;
.implements Lj$/util/function/IntFunction;
.implements Lj$/util/function/IntPredicate;
.implements Lj$/util/function/IntToDoubleFunction;
.implements Lj$/util/function/IntToLongFunction;
.implements Lj$/util/function/IntUnaryOperator;
.implements Lj$/util/function/LongBinaryOperator;
.implements Lj$/util/function/LongFunction;
.implements Lj$/util/function/LongPredicate;
.implements Lj$/util/function/LongToDoubleFunction;
.implements Lj$/util/function/LongToIntFunction;
.implements Lj$/util/function/LongUnaryOperator;
.implements Lj$/util/function/ObjDoubleConsumer;
.implements Lj$/util/function/ObjIntConsumer;
.implements Lj$/util/function/ObjLongConsumer;
.implements Lj$/util/function/Predicate;
.implements Lj$/util/function/Supplier;
.implements Lj$/util/function/ToDoubleFunction;
.implements Lj$/util/function/ToIntFunction;
.implements Lj$/util/function/ToLongFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field final synthetic wrappedValue:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lj$/util/function/Supplier$VivifiedWrapper;->$r8$classId:I

    iput-object p1, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic convert(Ljava/util/function/BiConsumer;)Lj$/util/function/BiConsumer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/function/Supplier$VivifiedWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static synthetic convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/function/Supplier$VivifiedWrapper;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static synthetic convert(Ljava/util/function/BinaryOperator;)Lj$/util/function/BinaryOperator;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/function/Supplier$VivifiedWrapper;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static synthetic convert(Ljava/util/function/DoublePredicate;)Lj$/util/function/DoublePredicate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/function/Supplier$VivifiedWrapper;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static synthetic convert(Ljava/util/function/IntFunction;)Lj$/util/function/IntFunction;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static synthetic convert(Ljava/util/function/IntPredicate;)Lj$/util/function/IntPredicate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static synthetic convert(Ljava/util/function/LongPredicate;)Lj$/util/function/LongPredicate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static synthetic convert(Ljava/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v1, 0x19

    invoke-direct {v0, p0, v1}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static synthetic convert(Ljava/util/function/Supplier;)Lj$/util/function/Supplier;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/function/Supplier$VivifiedWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;D)V
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ObjDoubleConsumer;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/function/ObjDoubleConsumer;->accept(Ljava/lang/Object;D)V

    return-void
.end method

.method public final synthetic accept(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ObjIntConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method public final synthetic accept(Ljava/lang/Object;J)V
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ObjLongConsumer;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/function/ObjLongConsumer;->accept(Ljava/lang/Object;J)V

    return-void
.end method

.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic apply(D)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/DoubleFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic apply(J)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :goto_0
    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BinaryOperator;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic applyAsDouble(D)D
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic applyAsDouble(DD)D
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/DoubleBinaryOperator;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic applyAsDouble(I)D
    .locals 2

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntToDoubleFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic applyAsDouble(J)D
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongToDoubleFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongToDoubleFunction;->applyAsDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToDoubleFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic applyAsInt(D)I
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/DoubleToIntFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleToIntFunction;->applyAsInt(D)I

    move-result p1

    return p1
.end method

.method public final synthetic applyAsInt(I)I
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntUnaryOperator;

    invoke-interface {v0, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    return p1
.end method

.method public final synthetic applyAsInt(II)I
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntBinaryOperator;

    invoke-interface {v0, p1, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result p1

    return p1
.end method

.method public final synthetic applyAsInt(J)I
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongToIntFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongToIntFunction;->applyAsInt(J)I

    move-result p1

    return p1
.end method

.method public final synthetic applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final synthetic applyAsLong(D)J
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/DoubleToLongFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleToLongFunction;->applyAsLong(D)J

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic applyAsLong(I)J
    .locals 2

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntToLongFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic applyAsLong(J)J
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongUnaryOperator;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic applyAsLong(JJ)J
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongBinaryOperator;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic applyAsLong(Ljava/lang/Object;)J
    .locals 2

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToLongFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic test(D)Z
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result p1

    return p1
.end method

.method public final synthetic test(I)Z
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p1

    return p1
.end method

.method public final synthetic test(J)Z
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result p1

    return p1
.end method

.method public final synthetic test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/function/Supplier$VivifiedWrapper;->wrappedValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
