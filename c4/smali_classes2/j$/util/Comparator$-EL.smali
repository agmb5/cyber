.class public final synthetic Lj$/util/Comparator$-EL;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2

    instance-of v0, p0, Lj$/util/Comparator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/Comparator;

    check-cast p0, Lj$/util/Comparators$NaturalOrderComparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/Comparator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, v1}, Lj$/util/Comparator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;Ljava/lang/Object;I)V

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/Comparator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, v1}, Lj$/util/Comparator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static thenComparingInt(Ljava/util/Comparator;Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 1

    instance-of v0, p0, Lj$/util/Comparator;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/Comparator;

    check-cast p0, Lj$/util/Comparators$NaturalOrderComparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {p1}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p1}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p1}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method
