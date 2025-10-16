.class public final synthetic Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Supplier;
.implements Lj$/util/function/BiConsumer;
.implements Lj$/util/function/Predicate;
.implements Lj$/util/function/IntFunction;
.implements Lj$/util/function/LongFunction;
.implements Lj$/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

.field public static final synthetic INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

.field public static final synthetic INSTANCE$2:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

.field public static final synthetic INSTANCE$3:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

.field public static final synthetic INSTANCE$4:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

.field public static final synthetic INSTANCE$5:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    .line 2
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE$2:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    .line 3
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    .line 4
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE$3:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    .line 5
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE$4:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    .line 6
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE$5:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, [D

    check-cast p2, [D

    sget v0, Lj$/util/stream/DoublePipeline;->$r8$clinit:I

    const/4 v0, 0x0

    aget-wide v0, p2, v0

    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    aget-wide v0, p2, v0

    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public apply(J)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lj$/util/stream/Nodes;->longBuilder(J)Lj$/util/stream/Node$Builder$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lj$/util/stream/Nodes$ConcNode;

    check-cast p1, Lj$/util/stream/Node;

    check-cast p2, Lj$/util/stream/Node;

    invoke-direct {v0, p1, p2}, Lj$/util/stream/Nodes$ConcNode;-><init>(Lj$/util/stream/Node;Lj$/util/stream/Node;)V

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lj$/util/OptionalLong;

    invoke-virtual {p1}, Lj$/util/OptionalLong;->isPresent()Z

    move-result p1

    return p1
.end method
