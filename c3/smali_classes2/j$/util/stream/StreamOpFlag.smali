.class final enum Lj$/util/stream/StreamOpFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lj$/util/stream/StreamOpFlag;

.field public static final enum DISTINCT:Lj$/util/stream/StreamOpFlag;

.field private static final FLAG_MASK:I

.field private static final FLAG_MASK_IS:I

.field private static final FLAG_MASK_NOT:I

.field static final INITIAL_OPS_VALUE:I

.field static final IS_DISTINCT:I

.field static final IS_ORDERED:I

.field static final IS_SHORT_CIRCUIT:I

.field static final IS_SIZED:I

.field static final IS_SORTED:I

.field static final NOT_DISTINCT:I

.field static final NOT_ORDERED:I

.field static final NOT_SIZED:I

.field static final NOT_SORTED:I

.field static final OP_MASK:I

.field public static final enum ORDERED:Lj$/util/stream/StreamOpFlag;

.field public static final enum SHORT_CIRCUIT:Lj$/util/stream/StreamOpFlag;

.field public static final enum SIZED:Lj$/util/stream/StreamOpFlag;

.field public static final enum SORTED:Lj$/util/stream/StreamOpFlag;

.field static final SPLITERATOR_CHARACTERISTICS_MASK:I

.field static final STREAM_MASK:I


# instance fields
.field private final bitPosition:I

.field private final clear:I

.field private final maskTable:Ljava/util/Map;

.field private final preserve:I

.field private final set:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lj$/util/stream/StreamOpFlag;

    sget-object v1, Lj$/util/stream/StreamOpFlag$Type;->SPLITERATOR:Lj$/util/stream/StreamOpFlag$Type;

    invoke-static {v1}, Lj$/util/stream/StreamOpFlag;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    sget-object v3, Lj$/util/stream/StreamOpFlag$Type;->STREAM:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v2, v3}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    sget-object v4, Lj$/util/stream/StreamOpFlag$Type;->OP:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v2, v4}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    const-string v5, "DISTINCT"

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v6, v2}, Lj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Lj$/util/stream/StreamOpFlag;->DISTINCT:Lj$/util/stream/StreamOpFlag;

    new-instance v2, Lj$/util/stream/StreamOpFlag;

    invoke-static {v1}, Lj$/util/stream/StreamOpFlag;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    invoke-virtual {v5, v4}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    const-string v7, "SORTED"

    const/4 v8, 0x1

    invoke-direct {v2, v7, v8, v8, v5}, Lj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v2, Lj$/util/stream/StreamOpFlag;->SORTED:Lj$/util/stream/StreamOpFlag;

    new-instance v5, Lj$/util/stream/StreamOpFlag;

    invoke-static {v1}, Lj$/util/stream/StreamOpFlag;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    invoke-virtual {v7, v4}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    sget-object v9, Lj$/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v7, v9}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->clear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    sget-object v10, Lj$/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v7, v10}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->clear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    const-string v11, "ORDERED"

    const/4 v12, 0x2

    invoke-direct {v5, v11, v12, v12, v7}, Lj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v5, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    new-instance v7, Lj$/util/stream/StreamOpFlag;

    invoke-static {v1}, Lj$/util/stream/StreamOpFlag;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    invoke-virtual {v11, v4}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->clear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    const-string v13, "SIZED"

    const/4 v14, 0x3

    invoke-direct {v7, v13, v14, v14, v11}, Lj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v7, Lj$/util/stream/StreamOpFlag;->SIZED:Lj$/util/stream/StreamOpFlag;

    new-instance v11, Lj$/util/stream/StreamOpFlag;

    invoke-static {v4}, Lj$/util/stream/StreamOpFlag;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    const-string v15, "SHORT_CIRCUIT"

    const/4 v14, 0x4

    const/16 v12, 0xc

    invoke-direct {v11, v15, v14, v12, v13}, Lj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v11, Lj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Lj$/util/stream/StreamOpFlag;

    const/4 v12, 0x5

    new-array v12, v12, [Lj$/util/stream/StreamOpFlag;

    aput-object v0, v12, v6

    aput-object v2, v12, v8

    const/4 v0, 0x2

    aput-object v5, v12, v0

    const/4 v0, 0x3

    aput-object v7, v12, v0

    aput-object v11, v12, v14

    sput-object v12, Lj$/util/stream/StreamOpFlag;->$VALUES:[Lj$/util/stream/StreamOpFlag;

    invoke-static {v1}, Lj$/util/stream/StreamOpFlag;->createMask(Lj$/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Lj$/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    invoke-static {v3}, Lj$/util/stream/StreamOpFlag;->createMask(Lj$/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Lj$/util/stream/StreamOpFlag;->STREAM_MASK:I

    invoke-static {v4}, Lj$/util/stream/StreamOpFlag;->createMask(Lj$/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Lj$/util/stream/StreamOpFlag;->OP_MASK:I

    invoke-static {v9}, Lj$/util/stream/StreamOpFlag;->createMask(Lj$/util/stream/StreamOpFlag$Type;)I

    invoke-static {v10}, Lj$/util/stream/StreamOpFlag;->createMask(Lj$/util/stream/StreamOpFlag$Type;)I

    .line 1
    invoke-static {}, Lj$/util/stream/StreamOpFlag;->values()[Lj$/util/stream/StreamOpFlag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    aget-object v3, v0, v6

    iget v3, v3, Lj$/util/stream/StreamOpFlag;->preserve:I

    or-int/2addr v2, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2
    :cond_0
    sput v2, Lj$/util/stream/StreamOpFlag;->FLAG_MASK:I

    sget v0, Lj$/util/stream/StreamOpFlag;->STREAM_MASK:I

    sput v0, Lj$/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    shl-int/lit8 v1, v0, 0x1

    sput v1, Lj$/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    or-int/2addr v0, v1

    sput v0, Lj$/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    sget-object v0, Lj$/util/stream/StreamOpFlag;->DISTINCT:Lj$/util/stream/StreamOpFlag;

    iget v1, v0, Lj$/util/stream/StreamOpFlag;->set:I

    sput v1, Lj$/util/stream/StreamOpFlag;->IS_DISTINCT:I

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->clear:I

    sput v0, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    sget-object v0, Lj$/util/stream/StreamOpFlag;->SORTED:Lj$/util/stream/StreamOpFlag;

    iget v1, v0, Lj$/util/stream/StreamOpFlag;->set:I

    sput v1, Lj$/util/stream/StreamOpFlag;->IS_SORTED:I

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->clear:I

    sput v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    iget v1, v0, Lj$/util/stream/StreamOpFlag;->set:I

    sput v1, Lj$/util/stream/StreamOpFlag;->IS_ORDERED:I

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->clear:I

    sput v0, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    sget-object v0, Lj$/util/stream/StreamOpFlag;->SIZED:Lj$/util/stream/StreamOpFlag;

    iget v1, v0, Lj$/util/stream/StreamOpFlag;->set:I

    sput v1, Lj$/util/stream/StreamOpFlag;->IS_SIZED:I

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->clear:I

    sput v0, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    sget-object v0, Lj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Lj$/util/stream/StreamOpFlag;

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->set:I

    sput v0, Lj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILj$/util/stream/StreamOpFlag$MaskBuilder;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1
    invoke-static {}, Lj$/util/stream/StreamOpFlag$Type;->values()[Lj$/util/stream/StreamOpFlag$Type;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p4, Lj$/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2
    instance-of v5, v3, Lj$/util/Map;

    if-eqz v5, :cond_0

    check-cast v3, Lj$/util/Map;

    invoke-interface {v3, v2, v4}, Lj$/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p4, Lj$/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lj$/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    const/4 p1, 0x2

    mul-int/lit8 p3, p3, 0x2

    iput p3, p0, Lj$/util/stream/StreamOpFlag;->bitPosition:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    iput p2, p0, Lj$/util/stream/StreamOpFlag;->set:I

    shl-int/2addr p1, p3

    iput p1, p0, Lj$/util/stream/StreamOpFlag;->clear:I

    const/4 p1, 0x3

    shl-int/2addr p1, p3

    iput p1, p0, Lj$/util/stream/StreamOpFlag;->preserve:I

    return-void
.end method

.method static combineOpFlags(II)I
    .locals 2

    if-nez p0, :cond_0

    sget v0, Lj$/util/stream/StreamOpFlag;->FLAG_MASK:I

    goto :goto_0

    :cond_0
    sget v0, Lj$/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, p0

    sget v1, Lj$/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    :goto_0
    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private static createMask(Lj$/util/stream/StreamOpFlag$Type;)I
    .locals 6

    invoke-static {}, Lj$/util/stream/StreamOpFlag;->values()[Lj$/util/stream/StreamOpFlag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    iget-object v5, v4, Lj$/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v4, v4, Lj$/util/stream/StreamOpFlag;->bitPosition:I

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method static fromCharacteristics(Lj$/util/Spliterator;)I
    .locals 2

    invoke-interface {p0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    if-eqz p0, :cond_0

    sget p0, Lj$/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr p0, v0

    and-int/lit8 p0, p0, -0x5

    return p0

    :cond_0
    sget p0, Lj$/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr p0, v0

    return p0
.end method

.method private static set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;
    .locals 3

    new-instance v0, Lj$/util/stream/StreamOpFlag$MaskBuilder;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lj$/util/stream/StreamOpFlag$Type;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Lj$/util/stream/StreamOpFlag$MaskBuilder;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    return-object v0
.end method

.method static toStreamFlags(I)I
    .locals 2

    xor-int/lit8 v0, p0, -0x1

    shr-int/lit8 v0, v0, 0x1

    sget v1, Lj$/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    and-int/2addr v0, v1

    and-int/2addr p0, v0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/util/stream/StreamOpFlag;
    .locals 1

    const-class v0, Lj$/util/stream/StreamOpFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/util/stream/StreamOpFlag;

    return-object p0
.end method

.method public static values()[Lj$/util/stream/StreamOpFlag;
    .locals 1

    sget-object v0, Lj$/util/stream/StreamOpFlag;->$VALUES:[Lj$/util/stream/StreamOpFlag;

    invoke-virtual {v0}, [Lj$/util/stream/StreamOpFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/util/stream/StreamOpFlag;

    return-object v0
.end method


# virtual methods
.method final isKnown(I)Z
    .locals 1

    iget v0, p0, Lj$/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr p1, v0

    iget v0, p0, Lj$/util/stream/StreamOpFlag;->set:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final isPreserved(I)Z
    .locals 1

    iget v0, p0, Lj$/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
