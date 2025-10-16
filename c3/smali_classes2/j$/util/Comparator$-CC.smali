.class public final synthetic Lj$/util/Comparator$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/Comparator$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lj$/util/Comparator$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static naturalOrder()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lj$/util/Comparators$NaturalOrderComparator;->INSTANCE:Lj$/util/Comparators$NaturalOrderComparator;

    return-object v0
.end method
