.class final enum Lj$/util/Comparators$NaturalOrderComparator;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Lj$/util/Comparator;


# static fields
.field private static final synthetic $VALUES:[Lj$/util/Comparators$NaturalOrderComparator;

.field public static final enum INSTANCE:Lj$/util/Comparators$NaturalOrderComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lj$/util/Comparators$NaturalOrderComparator;

    invoke-direct {v0}, Lj$/util/Comparators$NaturalOrderComparator;-><init>()V

    sput-object v0, Lj$/util/Comparators$NaturalOrderComparator;->INSTANCE:Lj$/util/Comparators$NaturalOrderComparator;

    const/4 v1, 0x1

    new-array v1, v1, [Lj$/util/Comparators$NaturalOrderComparator;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lj$/util/Comparators$NaturalOrderComparator;->$VALUES:[Lj$/util/Comparators$NaturalOrderComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/util/Comparators$NaturalOrderComparator;
    .locals 1

    const-class v0, Lj$/util/Comparators$NaturalOrderComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/util/Comparators$NaturalOrderComparator;

    return-object p0
.end method

.method public static values()[Lj$/util/Comparators$NaturalOrderComparator;
    .locals 1

    sget-object v0, Lj$/util/Comparators$NaturalOrderComparator;->$VALUES:[Lj$/util/Comparators$NaturalOrderComparator;

    invoke-virtual {v0}, [Lj$/util/Comparators$NaturalOrderComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/util/Comparators$NaturalOrderComparator;

    return-object v0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final reversed()Ljava/util/Comparator;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/Comparator$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/Comparator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;
    .locals 2

    invoke-static {p1}, Lj$/util/function/Function$VivifiedWrapper;->convert(Ljava/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/Comparator$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/Comparator$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 3
    invoke-static {p0, v0}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public final thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2

    invoke-static {p1}, Lj$/util/function/Function$VivifiedWrapper;->convert(Ljava/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/Comparator$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, v1}, Lj$/util/Comparator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;Ljava/lang/Object;I)V

    .line 5
    invoke-static {p0, v0}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public final thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v1, 0x1a

    invoke-direct {v0, p1, v1}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/Comparator$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/Comparator$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 3
    invoke-static {p0, v0}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public final thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v1, 0x1b

    invoke-direct {v0, p1, v1}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v0

    .line 2
    :goto_0
    invoke-static {p1}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p1}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public final thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v1, 0x1c

    invoke-direct {v0, p1, v1}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/Comparator$$ExternalSyntheticLambda2;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lj$/util/Comparator$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 3
    invoke-static {p0, v0}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method
