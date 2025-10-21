.class public Lj$/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;
.implements Lj$/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/Map;"
    }
.end annotation


# static fields
.field private static final ABASE:J

.field private static final ASHIFT:I

.field private static final BASECOUNT:J

.field private static final CELLSBUSY:J

.field private static final CELLVALUE:J

.field private static final MAX_RESIZERS:I

.field static final NCPU:I

.field private static final RESIZE_STAMP_SHIFT:I

.field private static final SIZECTL:J

.field private static final TRANSFERINDEX:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private volatile transient baseCount:J

.field private volatile transient cellsBusy:I

.field private volatile transient counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

.field private transient entrySet:Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;

.field private transient keySet:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

.field private volatile transient nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

.field private volatile transient sizeCtl:I

.field volatile transient table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

.field private volatile transient transferIndex:I

.field private transient values:Lj$/util/concurrent/ConcurrentHashMap$ValuesView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x10

    rsub-int/lit8 v1, v0, 0x20

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    sput v1, Lj$/util/concurrent/ConcurrentHashMap;->MAX_RESIZERS:I

    rsub-int/lit8 v0, v0, 0x20

    sput v0, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v3, [Lj$/util/concurrent/ConcurrentHashMap$Segment;

    const-string v4, "segments"

    invoke-direct {v1, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "segmentMask"

    invoke-direct {v1, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "segmentShift"

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lj$/util/concurrent/ConcurrentHashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    :try_start_0
    invoke-static {}, Lj$/util/concurrent/DesugarUnsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-class v1, Lj$/util/concurrent/ConcurrentHashMap;

    const-string v2, "sizeCtl"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const-string v2, "transferIndex"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    const-string v2, "baseCount"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    const-string v2, "cellsBusy"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const-class v1, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lj$/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    const-class v1, [Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->ABASE:J

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    sput v0, Lj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "data type scale not a power of two"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    if-ltz p1, :cond_1

    const/high16 v0, 0x20000000

    if-lt p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(IFI)V
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    if-lez p3, :cond_2

    const/16 p1, 0x10

    if-ge p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x10

    :goto_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    int-to-long v0, p3

    long-to-float p3, v0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p3, v0

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    double-to-long p1, v0

    const-wide/32 v0, 0x40000000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_1

    :cond_1
    long-to-int p2, p1

    invoke-static {p2}, Lj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result p1

    :goto_1
    iput p1, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private final addCount(JI)V
    .locals 11

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-nez v0, :cond_0

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    iget-wide v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    add-long v9, v5, p1

    move-object v2, p0

    move-wide v7, v9

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_8

    array-length v2, v0

    sub-int/2addr v2, v1

    if-ltz v2, :cond_8

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v3

    and-int/2addr v2, v3

    aget-object v4, v0, v2

    if-eqz v4, :cond_8

    sget-object v3, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v5, Lj$/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v7, v4, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    add-long v9, v7, p1

    invoke-virtual/range {v3 .. v10}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v0

    goto :goto_3

    :cond_1
    if-gt p3, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v9

    :cond_3
    if-ltz p3, :cond_7

    :goto_0
    iget v4, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    int-to-long p1, v4

    cmp-long p3, v9, p1

    if-ltz p3, :cond_7

    iget-object p1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz p1, :cond_7

    array-length p2, p1

    const/high16 p3, 0x40000000    # 2.0f

    if-ge p2, p3, :cond_7

    invoke-static {p2}, Lj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result p2

    if-gez v4, :cond_5

    sget p3, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    ushr-int p3, v4, p3

    if-ne p3, p2, :cond_7

    add-int/lit8 p3, p2, 0x1

    if-eq v4, p3, :cond_7

    sget p3, Lj$/util/concurrent/ConcurrentHashMap;->MAX_RESIZERS:I

    add-int/2addr p2, p3

    if-eq v4, p2, :cond_7

    iget-object p2, p0, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz p2, :cond_7

    iget p3, p0, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz p3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v5, v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-direct {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    sget p3, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    shl-int/2addr p2, p3

    add-int/lit8 v5, p2, 0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v9

    goto :goto_0

    :cond_7
    :goto_2
    return-void

    :cond_8
    :goto_3
    invoke-direct {p0, p1, p2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->fullAddCount(JZ)V

    return-void
.end method

.method static final casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)Z
    .locals 5

    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget p1, Lj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, p1

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->ABASE:J

    add-long/2addr v3, v1

    invoke-static {v0, p0, v3, v4, p2}, Lj$/util/concurrent/ConcurrentHashMap$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 6

    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    const-class v5, Ljava/lang/Comparable;

    if-ne v4, v5, :cond_1

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    aget-object v3, v3, v1

    if-ne v3, p0, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final fullAddCount(JZ)V
    .locals 24

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->localInit()V

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    move v1, v0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    move/from16 v0, p3

    :goto_0
    const/4 v13, 0x0

    move v14, v1

    :goto_1
    const/4 v15, 0x0

    :cond_1
    :goto_2
    iget-object v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-eqz v7, :cond_c

    array-length v8, v7

    if-lez v8, :cond_c

    add-int/lit8 v1, v8, -0x1

    and-int/2addr v1, v14

    aget-object v1, v7, v1

    if-nez v1, :cond_4

    iget v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v1, :cond_3

    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    invoke-direct {v7, v10, v11}, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    iget v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v1, :cond_3

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v14

    aget-object v3, v1, v2

    if-nez v3, :cond_2

    aput-object v7, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    iput v13, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-eqz v1, :cond_1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    iput v13, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v0

    :cond_3
    :goto_4
    const/4 v15, 0x0

    goto :goto_6

    :cond_4
    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v18, Lj$/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v3, v1, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    add-long v22, v3, v10

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-wide/from16 v20, v3

    invoke-virtual/range {v16 .. v23}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_8

    :cond_6
    iget-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v1, v7, :cond_3

    sget v1, Lj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    if-lt v8, v1, :cond_7

    goto :goto_4

    :cond_7
    if-nez v15, :cond_8

    const/4 v15, 0x1

    goto :goto_6

    :cond_8
    iget v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v1, :cond_b

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_1
    iget-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v1, v7, :cond_a

    shl-int/lit8 v1, v8, 0x1

    new-array v1, v1, [Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v8, :cond_9

    aget-object v3, v7, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    iput-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_a
    iput v13, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    iput v13, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v0

    :cond_b
    :goto_6
    invoke-static {v14}, Lj$/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    move-result v1

    move v14, v1

    goto/16 :goto_2

    :cond_c
    iget v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v1, :cond_e

    iget-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v1, v7, :cond_e

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_e

    :try_start_2
    iget-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v1, v7, :cond_d

    const/4 v1, 0x2

    new-array v1, v1, [Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    and-int/lit8 v2, v14, 0x1

    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    invoke-direct {v3, v10, v11}, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    aput-object v3, v1, v2

    iput-object v1, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    iput v13, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-eqz v1, :cond_1

    goto :goto_8

    :catchall_2
    move-exception v0

    iput v13, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v0

    :cond_e
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    iget-wide v5, v9, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    add-long v7, v5, v10

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_8
    return-void
.end method

.method private final initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 8

    :cond_0
    :goto_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_6

    :cond_1
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    if-gez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_2
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v7, -0x1

    move-object v3, p0

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_5

    :cond_3
    if-lez v0, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    const/16 v1, 0x10

    :goto_1
    new-array v2, v1, [Lj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    ushr-int/lit8 v0, v1, 0x2

    sub-int v0, v1, v0

    move-object v1, v2

    :cond_5
    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move-object v0, v1

    :cond_6
    return-object v0

    :catchall_0
    move-exception v1

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, -0x1

    iput v1, v0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    const-wide/16 v9, 0x1

    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v12

    invoke-direct {v11, v12, v7, v8, v6}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    add-long/2addr v4, v9

    move-object v6, v11

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    cmp-long v8, v4, v2

    if-nez v8, :cond_1

    iput v7, v0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    goto/16 :goto_9

    :cond_1
    const-wide/32 v11, 0x20000000

    const/4 v8, 0x1

    cmp-long v13, v4, v11

    if-ltz v13, :cond_2

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_1

    :cond_2
    long-to-int v5, v4

    ushr-int/lit8 v4, v5, 0x1

    add-int/2addr v5, v4

    add-int/2addr v5, v8

    invoke-static {v5}, Lj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v4

    :goto_1
    new-array v5, v4, [Lj$/util/concurrent/ConcurrentHashMap$Node;

    add-int/lit8 v11, v4, -0x1

    :goto_2
    if-eqz v6, :cond_d

    iget-object v12, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget v13, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    and-int v14, v13, v11

    invoke-static {v5, v14}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v15

    if-nez v15, :cond_3

    const/4 v1, 0x1

    goto/16 :goto_8

    :cond_3
    iget-object v1, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget v7, v15, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v7, :cond_5

    move-object v7, v15

    check-cast v7, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v8, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v7, v13, v1, v8}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v1

    if-nez v1, :cond_4

    add-long/2addr v2, v9

    :cond_4
    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_5
    move-object v7, v15

    const/4 v8, 0x0

    :goto_4
    if-eqz v7, :cond_8

    iget v9, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v9, v13, :cond_7

    iget-object v9, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v9, v1, :cond_6

    if-eqz v9, :cond_7

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v8, v8, 0x1

    iget-object v7, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    const-wide/16 v9, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_b

    const/16 v7, 0x8

    if-lt v8, v7, :cond_b

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    iput-object v15, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6
    if-eqz v1, :cond_a

    new-instance v9, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget v10, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v13, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-wide/from16 v22, v2

    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v18, v13

    move-object/from16 v19, v2

    invoke-direct/range {v16 .. v21}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    iput-object v8, v9, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v8, :cond_9

    move-object v7, v9

    goto :goto_7

    :cond_9
    iput-object v9, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_7
    iget-object v1, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v8, v9

    move-wide/from16 v2, v22

    goto :goto_6

    :cond_a
    move-wide/from16 v22, v2

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v1, v7}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {v5, v14, v1}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_3

    :cond_b
    :goto_8
    const-wide/16 v7, 0x1

    if-eqz v1, :cond_c

    add-long/2addr v2, v7

    iput-object v15, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-static {v5, v14, v6}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_c
    move-wide v9, v7

    move-object v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_d
    iput-object v5, v0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    ushr-int/lit8 v1, v4, 0x2

    sub-int/2addr v4, v1

    iput v4, v0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    iput-wide v2, v0, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    :goto_9
    return-void
.end method

.method static final resizeStamp(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    const v0, 0x8000

    or-int/2addr p0, v0

    return p0
.end method

.method static final setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 5

    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget p1, Lj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, p1

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->ABASE:J

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static final spread(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    return p0
.end method

.method static final tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 5

    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget p1, Lj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, p1

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->ABASE:J

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/concurrent/ConcurrentHashMap$Node;

    return-object p0
.end method

.method private static final tableSizeFor(I)I
    .locals 2

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    ushr-int/lit8 v1, p0, 0x1

    or-int/2addr p0, v1

    ushr-int/lit8 v1, p0, 0x2

    or-int/2addr p0, v1

    ushr-int/lit8 v1, p0, 0x4

    or-int/2addr p0, v1

    ushr-int/lit8 v1, p0, 0x8

    or-int/2addr p0, v1

    ushr-int/lit8 v1, p0, 0x10

    or-int/2addr p0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    if-lt p0, v1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    add-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method private final transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    array-length v8, v0

    sget v1, Lj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    const/4 v9, 0x1

    if-le v1, v9, :cond_0

    ushr-int/lit8 v2, v8, 0x3

    div-int/2addr v2, v1

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    const/16 v1, 0x10

    if-ge v2, v1, :cond_1

    const/16 v10, 0x10

    goto :goto_1

    :cond_1
    move v10, v2

    :goto_1
    if-nez p2, :cond_2

    shl-int/lit8 v1, v8, 0x1

    :try_start_0
    new-array v1, v1, [Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, v7, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iput v8, v7, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    move-object v11, v1

    goto :goto_2

    :catchall_0
    const v0, 0x7fffffff

    iput v0, v7, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_2
    move-object/from16 v11, p2

    :goto_2
    array-length v12, v11

    new-instance v13, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    invoke-direct {v13, v11}, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v4, v0

    move-object v3, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    :goto_3
    const/4 v1, -0x1

    if-eqz v15, :cond_8

    add-int/lit8 v5, v5, -0x1

    if-ge v5, v6, :cond_7

    if-eqz v16, :cond_3

    goto :goto_5

    :cond_3
    iget v2, v3, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v2, :cond_4

    move-object/from16 v21, v3

    move-object v14, v4

    const/4 v5, -0x1

    goto :goto_6

    :cond_4
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v17, Lj$/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    if-le v2, v10, :cond_5

    sub-int v19, v2, v10

    goto :goto_4

    :cond_5
    const/16 v19, 0x0

    :goto_4
    move/from16 v20, v2

    move-object/from16 v2, p0

    move-object/from16 v21, v3

    move-object v14, v4

    move-wide/from16 v3, v17

    move/from16 v17, v5

    move/from16 v5, v20

    move/from16 v18, v6

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v2, v20, -0x1

    move v5, v2

    move/from16 v6, v19

    goto :goto_6

    :cond_6
    move-object v4, v14

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v3, v21

    goto :goto_3

    :cond_7
    :goto_5
    move-object/from16 v21, v3

    move-object v14, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v5, v17

    move/from16 v6, v18

    :goto_6
    move-object v4, v14

    move-object/from16 v3, v21

    const/4 v15, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 v21, v3

    move-object v14, v4

    move/from16 v18, v6

    const/4 v2, 0x0

    if-ltz v5, :cond_1c

    if-ge v5, v8, :cond_1c

    add-int v3, v5, v8

    if-lt v3, v12, :cond_9

    goto/16 :goto_14

    :cond_9
    invoke-static {v14, v5}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-static {v14, v5, v13}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v1

    move v15, v1

    move/from16 v19, v10

    move/from16 v20, v12

    move-object v7, v13

    move-object v4, v14

    move-object/from16 v3, v21

    goto/16 :goto_13

    :cond_a
    iget v6, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v6, v1, :cond_b

    move-object v9, v7

    move/from16 v19, v10

    move/from16 v20, v12

    move-object v7, v13

    move-object v4, v14

    move-object/from16 v3, v21

    const/4 v10, 0x1

    const/4 v15, 0x1

    goto/16 :goto_15

    :cond_b
    monitor-enter v4

    :try_start_1
    invoke-static {v14, v5}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    if-ne v1, v4, :cond_1a

    if-ltz v6, :cond_11

    and-int v1, v6, v8

    iget-object v6, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v15, v4

    :goto_7
    if-eqz v6, :cond_d

    iget v9, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    and-int/2addr v9, v8

    if-eq v9, v1, :cond_c

    move-object v15, v6

    move v1, v9

    :cond_c
    iget-object v6, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v9, 0x1

    goto :goto_7

    :cond_d
    if-nez v1, :cond_e

    move-object v1, v15

    goto :goto_8

    :cond_e
    move-object v1, v2

    move-object v2, v15

    :goto_8
    move-object v6, v4

    :goto_9
    if-eq v6, v15, :cond_10

    iget v9, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v19, v10

    iget-object v10, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move/from16 v20, v12

    iget-object v12, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    and-int v21, v9, v8

    if-nez v21, :cond_f

    move-object/from16 v21, v15

    new-instance v15, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v15, v9, v10, v12, v1}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v1, v15

    goto :goto_a

    :cond_f
    move-object/from16 v21, v15

    new-instance v15, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v15, v9, v10, v12, v2}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v2, v15

    :goto_a
    iget-object v6, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move/from16 v10, v19

    move/from16 v12, v20

    move-object/from16 v15, v21

    goto :goto_9

    :cond_10
    move/from16 v19, v10

    move/from16 v20, v12

    invoke-static {v11, v5, v1}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    invoke-static {v11, v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    invoke-static {v14, v5, v13}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v7, v13

    goto/16 :goto_11

    :cond_11
    move/from16 v19, v10

    move/from16 v20, v12

    instance-of v1, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v1, :cond_1b

    move-object v1, v4

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v6, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v9, v2

    move-object v10, v9

    move-object v12, v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v6, v10

    :goto_b
    if-eqz v12, :cond_15

    move-object/from16 v27, v1

    iget v1, v12, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v0, v12, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v28, v13

    iget-object v13, v12, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v7

    move/from16 v22, v1

    move-object/from16 v23, v0

    move-object/from16 v24, v13

    invoke-direct/range {v21 .. v26}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    and-int v0, v1, v8

    if-nez v0, :cond_13

    iput-object v10, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v10, :cond_12

    move-object v2, v7

    goto :goto_c

    :cond_12
    iput-object v7, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_c
    add-int/lit8 v14, v14, 0x1

    move-object v10, v7

    goto :goto_e

    :cond_13
    iput-object v9, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v9, :cond_14

    move-object v6, v7

    goto :goto_d

    :cond_14
    iput-object v7, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_d
    add-int/lit8 v15, v15, 0x1

    move-object v9, v7

    :goto_e
    iget-object v12, v12, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v13, v28

    goto :goto_b

    :cond_15
    move-object/from16 v27, v1

    move-object/from16 v28, v13

    const/4 v0, 0x6

    if-gt v14, v0, :cond_16

    invoke-static {v2}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    goto :goto_f

    :cond_16
    if-eqz v15, :cond_17

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_f

    :cond_17
    move-object/from16 v1, v27

    :goto_f
    if-gt v15, v0, :cond_18

    invoke-static {v6}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    goto :goto_10

    :cond_18
    if-eqz v14, :cond_19

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_10

    :cond_19
    move-object/from16 v0, v27

    :goto_10
    invoke-static {v11, v5, v1}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    invoke-static {v11, v3, v0}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object/from16 v0, p1

    move-object/from16 v7, v28

    invoke-static {v0, v5, v7}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v14, v0

    :goto_11
    const/4 v15, 0x1

    goto :goto_12

    :cond_1a
    move/from16 v19, v10

    move/from16 v20, v12

    :cond_1b
    move-object v7, v13

    :goto_12
    monitor-exit v4

    move-object/from16 v3, p0

    move-object v4, v14

    :goto_13
    const/4 v10, 0x1

    move-object/from16 v9, p0

    goto :goto_15

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_1c
    :goto_14
    move/from16 v19, v10

    move/from16 v20, v12

    move-object v7, v13

    if-eqz v16, :cond_1d

    move-object/from16 v9, p0

    iput-object v2, v9, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v11, v9, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    shl-int/lit8 v0, v8, 0x1

    const/4 v10, 0x1

    ushr-int/lit8 v1, v8, 0x1

    sub-int/2addr v0, v1

    iput v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_1d
    const/4 v10, 0x1

    move-object/from16 v9, p0

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    iget v12, v9, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    add-int/lit8 v6, v12, -0x1

    move-object/from16 v2, p0

    move/from16 v17, v5

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1f

    add-int/lit8 v12, v12, -0x2

    invoke-static {v8}, Lj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v1

    sget v2, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    shl-int/2addr v1, v2

    if-eq v12, v1, :cond_1e

    return-void

    :cond_1e
    move v5, v8

    move-object v3, v9

    move-object v4, v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    goto :goto_15

    :cond_1f
    move-object v3, v9

    move-object v4, v14

    move/from16 v5, v17

    :goto_15
    move-object v13, v7

    move-object v7, v9

    move/from16 v6, v18

    move/from16 v10, v19

    move/from16 v12, v20

    const/4 v9, 0x1

    goto/16 :goto_3
.end method

.method private final treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V
    .locals 11

    array-length v0, p1

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    shl-int/lit8 p1, v0, 0x1

    invoke-direct {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    goto :goto_2

    :cond_0
    invoke-static {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ltz v1, :cond_4

    monitor-enter v0

    :try_start_0
    invoke-static {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    if-ne v1, v0, :cond_3

    const/4 v1, 0x0

    move-object v3, v0

    move-object v2, v1

    :goto_0
    if-eqz v3, :cond_2

    new-instance v10, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget v5, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v6, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v7, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    iput-object v2, v10, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_1

    move-object v1, v10

    goto :goto_1

    :cond_1
    iput-object v10, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_1
    iget-object v3, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v10

    goto :goto_0

    :cond_2
    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {p1, p2, v2}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_3
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method private final tryPresize(I)V
    .locals 10

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x20000000

    if-lt p1, v1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, p1, 0x1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result p1

    :cond_1
    :goto_0
    iget v7, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    if-ltz v7, :cond_9

    iget-object v8, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v8, :cond_6

    array-length v1, v8

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    if-le p1, v7, :cond_9

    if-lt v1, v0, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v8, v2, :cond_1

    invoke-static {v1}, Lj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v1

    if-gez v7, :cond_5

    sget v2, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    ushr-int v2, v7, v2

    if-ne v2, v1, :cond_9

    add-int/lit8 v2, v1, 0x1

    if-eq v7, v2, :cond_9

    sget v2, Lj$/util/concurrent/ConcurrentHashMap;->MAX_RESIZERS:I

    add-int/2addr v1, v2

    if-eq v7, v1, :cond_9

    iget-object v9, p0, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v9, :cond_9

    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v1, :cond_4

    goto :goto_3

    :cond_4
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v6, v7, 0x1

    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v8, v9}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_0

    :cond_5
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    sget v5, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    shl-int/2addr v1, v5

    add-int/lit8 v6, v1, 0x2

    move-object v1, v2

    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_0

    :cond_6
    :goto_1
    if-le v7, p1, :cond_7

    move v9, v7

    goto :goto_2

    :cond_7
    move v9, p1

    :goto_2
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v6, -0x1

    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v1, v8, :cond_8

    new-array v1, v9, [Lj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    ushr-int/lit8 v1, v9, 0x2

    sub-int v7, v9, v1

    :cond_8
    iput v7, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    goto :goto_0

    :catchall_0
    move-exception p1

    iput v7, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    throw p1

    :cond_9
    :goto_3
    return-void
.end method

.method static untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    if-eqz p0, :cond_1

    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget v4, p0, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v6, v0}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    if-nez v2, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    iput-object v3, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_1
    iget-object p0, p0, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v2, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v3, v3, 0x20

    sub-int/2addr v2, v1

    new-array v1, v4, [Lj$/util/concurrent/ConcurrentHashMap$Segment;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    new-instance v6, Lj$/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v6}, Lj$/util/concurrent/ConcurrentHashMap$Segment;-><init>()V

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v4

    const-string v5, "segments"

    invoke-virtual {v4, v5, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    const-string v4, "segmentShift"

    invoke-virtual {v1, v4, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    const-string v3, "segmentMask"

    invoke-virtual {v1, v3, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v1, :cond_2

    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v1

    array-length v4, v1

    invoke-direct {v2, v1, v3, v0, v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_2
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 12

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v5, v2

    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/4 v7, -0x1

    if-eqz v0, :cond_6

    array-length v8, v0

    if-ge v4, v8, :cond_6

    invoke-static {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v8

    if-nez v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget v9, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v9, v7, :cond_1

    invoke-virtual {p0, v0, v8}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    monitor-enter v8

    :try_start_0
    invoke-static {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    if-ne v7, v8, :cond_5

    const/4 v7, 0x0

    if-ltz v9, :cond_2

    move-object v9, v8

    goto :goto_2

    :cond_2
    instance-of v9, v8, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v9, :cond_3

    move-object v9, v8

    check-cast v9, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v9, v9, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_2

    :cond_3
    move-object v9, v7

    :goto_2
    if-eqz v9, :cond_4

    const-wide/16 v10, 0x1

    sub-long/2addr v5, v10

    iget-object v9, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v4, 0x1

    invoke-static {v0, v4, v7}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    move v4, v9

    :cond_5
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    cmp-long v0, v5, v2

    if-eqz v0, :cond_7

    invoke-direct {p0, v5, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_7
    return-void
.end method

.method public final compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 13

    invoke-static {p2}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v1

    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v3, 0x0

    move-object v5, v0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_16

    array-length v6, v2

    if-nez v6, :cond_1

    goto/16 :goto_b

    :cond_1
    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v1

    invoke-static {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_4

    new-instance v9, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct {v9}, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    monitor-enter v9

    :try_start_0
    invoke-static {v2, v6, v9}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_3

    :try_start_1
    move-object v4, p2

    check-cast v4, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v4, p1, v0}, Lj$/util/function/Supplier$VivifiedWrapper;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v3, v1, p1, v4, v0}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v3

    move-object v3, v0

    :goto_1
    :try_start_2
    invoke-static {v2, v6, v3}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    move v3, v5

    move-object v5, v4

    const/4 v4, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {v2, v6, v0}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    throw p1

    :cond_3
    :goto_2
    monitor-exit v9

    if-eqz v4, :cond_0

    goto/16 :goto_a

    :catchall_1
    move-exception p1

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    iget v9, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    invoke-virtual {p0, v2, v7}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    goto :goto_0

    :cond_5
    monitor-enter v7

    :try_start_3
    invoke-static {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v11

    if-ne v11, v7, :cond_13

    if-ltz v9, :cond_c

    move-object v9, v0

    move-object v4, v7

    const/4 v5, 0x1

    :goto_3
    iget v11, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v11, v1, :cond_9

    iget-object v11, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v11, p1, :cond_6

    if-eqz v11, :cond_9

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_6
    iget-object v8, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v11, p2

    check-cast v11, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v11, p1, v8}, Lj$/util/function/Supplier$VivifiedWrapper;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    iput-object v8, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_5

    :cond_7
    iget-object v3, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v9, :cond_8

    iput-object v3, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_4

    :cond_8
    invoke-static {v2, v6, v3}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    :goto_4
    const/4 v3, -0x1

    goto :goto_5

    :cond_9
    iget-object v9, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-nez v9, :cond_b

    move-object v9, p2

    check-cast v9, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v9, p1, v0}, Lj$/util/function/Supplier$VivifiedWrapper;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a

    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v3, v1, p1, v9, v0}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v3, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v8, v9

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    move-object v8, v9

    :goto_5
    move v4, v5

    move-object v5, v8

    goto :goto_9

    :cond_b
    add-int/lit8 v5, v5, 0x1

    move-object v12, v9

    move-object v9, v4

    move-object v4, v12

    goto :goto_3

    :cond_c
    instance-of v9, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v9, :cond_13

    move-object v4, v7

    check-cast v4, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v5, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v5, :cond_d

    invoke-virtual {v5, v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v5

    goto :goto_6

    :cond_d
    move-object v5, v0

    :goto_6
    if-nez v5, :cond_e

    move-object v9, v0

    goto :goto_7

    :cond_e
    iget-object v9, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    :goto_7
    move-object v11, p2

    check-cast v11, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v11, p1, v9}, Lj$/util/function/Supplier$VivifiedWrapper;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_10

    if-eqz v5, :cond_f

    iput-object v9, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_8

    :cond_f
    invoke-virtual {v4, v1, p1, v9}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v3, 0x1

    goto :goto_8

    :cond_10
    if-eqz v5, :cond_12

    invoke-virtual {v4, v5}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v3}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_11
    const/4 v3, -0x1

    :cond_12
    :goto_8
    move-object v5, v9

    const/4 v4, 0x1

    :cond_13
    :goto_9
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_0

    const/16 p1, 0x8

    if-lt v4, p1, :cond_14

    invoke-direct {p0, v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V

    :cond_14
    :goto_a
    if-eqz v3, :cond_15

    int-to-long p1, v3

    invoke-direct {p0, p1, p2, v4}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_15
    return-object v5

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_16
    :goto_b
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    goto/16 :goto_0

    :cond_17
    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method

.method public final computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 11

    invoke-static {p2}, Lj$/util/function/Function$VivifiedWrapper;->convert(Ljava/util/function/Function;)Lj$/util/function/Function;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v1

    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v3, 0x0

    move-object v5, v0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_11

    array-length v6, v2

    if-nez v6, :cond_1

    goto/16 :goto_a

    :cond_1
    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v1

    invoke-static {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_4

    new-instance v9, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct {v9}, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    monitor-enter v9

    :try_start_0
    invoke-static {v2, v6, v9}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_3

    :try_start_1
    invoke-interface {p2, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v5, v1, p1, v4, v0}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    move-object v5, v0

    :goto_1
    :try_start_2
    invoke-static {v2, v6, v5}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v5, v4

    const/4 v4, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {v2, v6, v0}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    throw p1

    :cond_3
    :goto_2
    monitor-exit v9

    if-eqz v4, :cond_0

    goto/16 :goto_8

    :catchall_1
    move-exception p1

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    iget v9, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    invoke-virtual {p0, v2, v7}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    goto :goto_0

    :cond_5
    monitor-enter v7

    :try_start_3
    invoke-static {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    if-ne v10, v7, :cond_d

    if-ltz v9, :cond_a

    move-object v4, v7

    const/4 v5, 0x1

    :goto_3
    iget v9, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v9, v1, :cond_7

    iget-object v9, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v9, p1, :cond_6

    if-eqz v9, :cond_7

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    iget-object v4, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_4

    :cond_7
    iget-object v9, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-nez v9, :cond_9

    invoke-interface {p2, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    new-instance v10, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v10, v1, p1, v9, v0}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v10, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_5

    :cond_8
    move-object v4, v9

    :goto_4
    move-object v9, v4

    const/4 v8, 0x0

    goto :goto_5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move-object v4, v9

    goto :goto_3

    :cond_a
    instance-of v9, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v9, :cond_d

    const/4 v4, 0x2

    move-object v5, v7

    check-cast v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v9, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v9, :cond_b

    invoke-virtual {v9, v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v9

    if-eqz v9, :cond_b

    iget-object v5, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_6

    :cond_b
    invoke-interface {p2, p1}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v5, v1, p1, v9}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v5, 0x2

    :goto_5
    move v4, v5

    move-object v5, v9

    goto :goto_7

    :cond_c
    move-object v5, v9

    :cond_d
    :goto_6
    const/4 v8, 0x0

    :goto_7
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_0

    const/16 p1, 0x8

    if-lt v4, p1, :cond_e

    invoke-direct {p0, v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V

    :cond_e
    if-nez v8, :cond_f

    goto :goto_9

    :cond_f
    :goto_8
    if-eqz v5, :cond_10

    const-wide/16 p1, 0x1

    invoke-direct {p0, p1, p2, v4}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_10
    :goto_9
    return-object v5

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_11
    :goto_a
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    goto/16 :goto_0

    :cond_12
    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method public final computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 13

    invoke-static {p2}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v1

    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v3, 0x0

    move-object v5, v0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_e

    array-length v6, v2

    if-nez v6, :cond_1

    goto/16 :goto_6

    :cond_1
    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v1

    invoke-static {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    if-nez v7, :cond_2

    goto/16 :goto_4

    :cond_2
    iget v8, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    invoke-virtual {p0, v2, v7}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    goto :goto_0

    :cond_3
    monitor-enter v7

    :try_start_0
    invoke-static {v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    if-ne v10, v7, :cond_c

    if-ltz v8, :cond_8

    const/4 v4, 0x1

    move-object v10, v0

    move-object v8, v7

    :goto_1
    iget v11, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v11, v1, :cond_6

    iget-object v11, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v11, p1, :cond_4

    if-eqz v11, :cond_6

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_4
    iget-object v5, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v11, p2

    check-cast v11, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v11, p1, v5}, Lj$/util/function/Supplier$VivifiedWrapper;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    iput-object v5, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object v3, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v10, :cond_a

    iput-object v3, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_6
    iget-object v10, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-nez v10, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move-object v12, v10

    move-object v10, v8

    move-object v8, v12

    goto :goto_1

    :cond_8
    instance-of v8, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v8, :cond_c

    const/4 v4, 0x2

    move-object v8, v7

    check-cast v8, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v10, v8, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v10, :cond_c

    invoke-virtual {v10, v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v10

    if-eqz v10, :cond_c

    iget-object v5, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v11, p2

    check-cast v11, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v11, p1, v5}, Lj$/util/function/Supplier$VivifiedWrapper;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    iput-object v5, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_3

    :cond_9
    invoke-virtual {v8, v10}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v8, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v3}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    :cond_a
    invoke-static {v2, v6, v3}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_b
    :goto_2
    const/4 v3, -0x1

    :cond_c
    :goto_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    :goto_4
    if-eqz v3, :cond_d

    int-to-long p1, v3

    invoke-direct {p0, p1, p2, v4}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_d
    return-object v5

    :goto_5
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_e
    :goto_6
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v0

    array-length v4, v0

    invoke-direct {v2, v0, v3, v1, v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :cond_0
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->entrySet:Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;

    invoke-direct {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;-><init>(Lj$/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->entrySet:Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;

    :goto_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p1, p0, :cond_7

    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v3, v0, v2, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :cond_2
    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v0, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eq v0, v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_6
    return v1

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 5

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_0

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v1, v0, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_0
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v0, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v3, v2, v0}, Lj$/util/function/Supplier$VivifiedWrapper;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    array-length v3, v1

    if-lez v3, :cond_5

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    invoke-static {v1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v3, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v3, v0, :cond_1

    iget-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_0

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget-object p1, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object p1

    :cond_1
    if-gez v3, :cond_3

    invoke-virtual {v1, v0, p1}, Lj$/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v2, p1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    :cond_2
    return-object v2

    :cond_3
    iget-object v1, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v1, :cond_5

    iget v3, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v3, v0, :cond_3

    iget-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_4
    iget-object p1, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object p1

    :cond_5
    return-object v2
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v0

    array-length v4, v0

    invoke-direct {v2, v0, v3, v1, v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_0
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v0, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v3

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method final helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 8

    instance-of v0, p2, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_3

    check-cast p2, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object p2, p2, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz p2, :cond_3

    array-length v0, p1

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v1, p1, :cond_2

    iget v6, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    if-gez v6, :cond_2

    sget v1, Lj$/util/concurrent/ConcurrentHashMap;->RESIZE_STAMP_SHIFT:I

    ushr-int v1, v6, v1

    if-ne v1, v0, :cond_2

    add-int/lit8 v1, v0, 0x1

    if-eq v6, v1, :cond_2

    sget v1, Lj$/util/concurrent/ConcurrentHashMap;->MAX_RESIZERS:I

    add-int/2addr v1, v0

    if-eq v6, v1, :cond_2

    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v7, v6, 0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_2
    :goto_0
    return-object p2

    :cond_3
    iget-object p1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 5

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->keySet:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-direct {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Lj$/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->keySet:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    :goto_0
    return-object v0
.end method

.method public final merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-static/range {p3 .. p3}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_14

    if-eqz v2, :cond_14

    if-eqz v3, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    iget-object v6, v1, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v7, 0x0

    move-object v9, v4

    const/4 v8, 0x0

    :cond_0
    :goto_0
    if-eqz v6, :cond_13

    array-length v10, v6

    if-nez v10, :cond_1

    goto/16 :goto_9

    :cond_1
    add-int/lit8 v10, v10, -0x1

    and-int/2addr v10, v5

    invoke-static {v6, v10}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v11

    const/4 v12, 0x1

    if-nez v11, :cond_2

    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v11, v5, v0, v2, v4}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    invoke-static {v6, v10, v11}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_8

    :cond_2
    iget v13, v11, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    invoke-virtual {v1, v6, v11}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v6

    goto :goto_0

    :cond_3
    monitor-enter v11

    :try_start_0
    invoke-static {v6, v10}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v15

    const/16 v16, 0x2

    if-ne v15, v11, :cond_10

    if-ltz v13, :cond_9

    move-object v13, v4

    move-object v7, v11

    const/4 v9, 0x1

    :goto_1
    iget v15, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v15, v5, :cond_7

    iget-object v15, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v15, v0, :cond_4

    if-eqz v15, :cond_7

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_4
    iget-object v12, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v15, v3

    check-cast v15, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v15, v12, v2}, Lj$/util/function/Supplier$VivifiedWrapper;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5

    iput-object v12, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object v7, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v13, :cond_6

    iput-object v7, v13, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_2

    :cond_6
    invoke-static {v6, v10, v7}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    :goto_2
    const/4 v8, -0x1

    goto :goto_3

    :cond_7
    iget-object v13, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-nez v13, :cond_8

    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v8, v5, v0, v2, v4}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v8, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v12, v2

    const/4 v8, 0x1

    :goto_3
    move v7, v9

    move-object v9, v12

    goto :goto_7

    :cond_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v17, v13

    move-object v13, v7

    move-object/from16 v7, v17

    goto :goto_1

    :cond_9
    instance-of v13, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v13, :cond_10

    move-object v7, v11

    check-cast v7, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v9, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v9, :cond_a

    move-object v9, v4

    goto :goto_4

    :cond_a
    invoke-virtual {v9, v5, v0, v4}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v9

    :goto_4
    if-nez v9, :cond_b

    move-object v13, v2

    goto :goto_5

    :cond_b
    iget-object v13, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v15, v3

    check-cast v15, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v15, v13, v2}, Lj$/util/function/Supplier$VivifiedWrapper;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :goto_5
    if-eqz v13, :cond_d

    if-eqz v9, :cond_c

    iput-object v13, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_6

    :cond_c
    invoke-virtual {v7, v5, v0, v13}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v9, v13

    const/4 v7, 0x2

    const/4 v8, 0x1

    goto :goto_7

    :cond_d
    if-eqz v9, :cond_f

    invoke-virtual {v7, v9}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v7, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v7}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    invoke-static {v6, v10, v7}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_e
    move-object v9, v13

    const/4 v7, 0x2

    const/4 v8, -0x1

    goto :goto_7

    :cond_f
    :goto_6
    move-object v9, v13

    const/4 v7, 0x2

    :cond_10
    :goto_7
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    const/16 v0, 0x8

    if-lt v7, v0, :cond_11

    invoke-direct {v1, v6, v10}, Lj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V

    :cond_11
    move v12, v8

    move-object v2, v9

    :goto_8
    if-eqz v12, :cond_12

    int-to-long v3, v12

    invoke-direct {v1, v3, v4, v7}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_12
    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_13
    :goto_9
    invoke-direct/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v6

    goto/16 :goto_0

    :cond_14
    goto :goto_b

    :goto_a
    throw v4

    :goto_b
    goto :goto_a
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    :cond_0
    :goto_0
    if-eqz v3, :cond_c

    array-length v4, v3

    if-nez v4, :cond_1

    goto/16 :goto_6

    :cond_1
    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v1

    invoke-static {v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v5, v1, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    invoke-static {v3, v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_5

    :cond_2
    iget v6, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    invoke-virtual {p0, v3, v5}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    goto :goto_0

    :cond_3
    monitor-enter v5

    :try_start_0
    invoke-static {v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    if-ne v7, v5, :cond_8

    if-ltz v6, :cond_7

    const/4 v2, 0x1

    move-object v6, v5

    :goto_1
    iget v7, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v7, v1, :cond_5

    iget-object v7, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v7, p1, :cond_4

    if-eqz v7, :cond_5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    iget-object v7, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    if-nez p3, :cond_9

    goto :goto_2

    :cond_5
    iget-object v7, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-nez v7, :cond_6

    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v7, v1, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v7, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object v6, v7

    goto :goto_1

    :cond_7
    instance-of v6, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v6, :cond_8

    const/4 v2, 0x2

    move-object v6, v5

    check-cast v6, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-virtual {v6, v1, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v7, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    if-nez p3, :cond_9

    :goto_2
    iput-object p2, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_4

    :cond_8
    :goto_3
    move-object v7, v0

    :cond_9
    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/16 p1, 0x8

    if-lt v2, p1, :cond_a

    invoke-direct {p0, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V

    :cond_a
    if-eqz v7, :cond_b

    return-object v7

    :cond_b
    :goto_5
    const-wide/16 p1, 0x1

    invoke-direct {p0, p1, p2, v2}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_c
    :goto_6
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    goto/16 :goto_0

    :cond_d
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    throw v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p3, p2}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public final replaceAll(Ljava/util/function/BiFunction;)V
    .locals 5

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_2

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v1, v0, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v0, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    :cond_1
    move-object v3, p1

    check-cast v3, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v3, v0, v2}, Lj$/util/function/Supplier$VivifiedWrapper;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_2
    return-void
.end method

.method final replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    :cond_0
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_10

    array-length v3, v1

    if-eqz v3, :cond_10

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    invoke-static {v1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_6

    :cond_1
    iget v5, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {p0, v1, v4}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    monitor-enter v4

    :try_start_0
    invoke-static {v1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v8

    const/4 v9, 0x1

    if-ne v8, v4, :cond_e

    if-ltz v5, :cond_9

    move-object v7, v2

    move-object v5, v4

    :goto_1
    iget v8, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v8, v0, :cond_7

    iget-object v8, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v8, p1, :cond_3

    if-eqz v8, :cond_7

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_3
    iget-object v8, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    if-eqz p3, :cond_4

    if-eq p3, v8, :cond_4

    if-eqz v8, :cond_c

    invoke-virtual {p3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_4
    if-eqz p2, :cond_5

    iput-object p2, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_4

    :cond_5
    if-eqz v7, :cond_6

    iget-object v3, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v3, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_4

    :cond_6
    iget-object v5, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_2
    invoke-static {v1, v3, v5}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_4

    :cond_7
    iget-object v7, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-nez v7, :cond_8

    goto :goto_3

    :cond_8
    move-object v11, v7

    move-object v7, v5

    move-object v5, v11

    goto :goto_1

    :cond_9
    instance-of v5, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v5, :cond_e

    move-object v5, v4

    check-cast v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v7, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v7, :cond_c

    invoke-virtual {v7, v0, p1, v2}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v8, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    if-eqz p3, :cond_a

    if-eq p3, v8, :cond_a

    if-eqz v8, :cond_c

    invoke-virtual {p3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_a
    if-eqz p2, :cond_b

    iput-object p2, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_4

    :cond_b
    invoke-virtual {v5, v7}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v5, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v5}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    goto :goto_2

    :cond_c
    :goto_3
    move-object v8, v2

    :cond_d
    :goto_4
    const/4 v7, 0x1

    goto :goto_5

    :cond_e
    move-object v8, v2

    :goto_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    if-eqz v8, :cond_10

    if-nez p2, :cond_f

    const-wide/16 p1, -0x1

    invoke-direct {p0, p1, p2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_f
    return-object v8

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_10
    :goto_6
    return-object v2
.end method

.method public final size()I
    .locals 5

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method final sumCount()J
    .locals 6

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    iget-wide v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iget-wide v4, v4, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    add-long/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v3, v0, v2, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v1, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const-string v4, "(this Map)"

    if-ne v2, p0, :cond_1

    move-object v2, v4

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v1, p0, :cond_2

    move-object v1, v4

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    :goto_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->values:Lj$/util/concurrent/ConcurrentHashMap$ValuesView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$ValuesView;

    invoke-direct {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap$ValuesView;-><init>(Lj$/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->values:Lj$/util/concurrent/ConcurrentHashMap$ValuesView;

    :goto_0
    return-object v0
.end method
