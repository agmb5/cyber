.class public final Lj$/time/Instant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/TemporalAccessor;",
        "Ljava/lang/Comparable<",
        "Lj$/time/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final EPOCH:Lj$/time/Instant;


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lj$/time/Instant;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lj$/time/Instant;-><init>(JI)V

    sput-object v0, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    const-wide v3, -0x701cefeb9bec00L

    invoke-static {v3, v4, v1, v2}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    const-wide v0, 0x701cd2fa9578ffL

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lj$/time/Instant;->seconds:J

    iput p3, p0, Lj$/time/Instant;->nanos:I

    return-void
.end method

.method private static create(JI)Lj$/time/Instant;
    .locals 5

    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    sget-object p0, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    return-object p0

    :cond_0
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    new-instance v0, Lj$/time/Instant;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/Instant;-><init>(JI)V

    return-object v0

    :cond_1
    new-instance p0, Lj$/time/DateTimeException;

    const-string p1, "Instant exceeds minimum or maximum instant"

    invoke-direct {p0, p1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ofEpochMilli(J)Lj$/time/Instant;
    .locals 4

    const-wide/16 v0, 0x3e8

    invoke-static {p0, p1, v0, v1}, Lj$/time/temporal/TemporalQueries;->m$2(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v0, v1}, Lj$/time/temporal/TemporalQueries;->m$1(JJ)J

    move-result-wide p0

    long-to-int p1, p0

    const p0, 0xf4240

    mul-int p1, p1, p0

    invoke-static {v2, v3, p1}, Lj$/time/Instant;->create(JI)Lj$/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static ofEpochSecond(JJ)Lj$/time/Instant;
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    invoke-static {p2, p3, v0, v1}, Lj$/time/temporal/TemporalQueries;->m$2(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lj$/time/temporal/TemporalQueries;->m(JJ)J

    move-result-wide p0

    invoke-static {p2, p3, v0, v1}, Lj$/time/temporal/TemporalQueries;->m$1(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    invoke-static {p0, p1, p3}, Lj$/time/Instant;->create(JI)Lj$/time/Instant;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lj$/time/Instant;

    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    iget-wide v2, p1, Lj$/time/Instant;->seconds:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lj$/time/Instant;->nanos:I

    iget p1, p1, Lj$/time/Instant;->nanos:I

    sub-int v4, v0, p1

    :goto_0
    return v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/Instant;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/Instant;

    iget-wide v3, p0, Lj$/time/Instant;->seconds:J

    iget-wide v5, p1, Lj$/time/Instant;->seconds:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lj$/time/Instant;->nanos:I

    iget p1, p1, Lj$/time/Instant;->nanos:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final get(Lj$/time/temporal/TemporalField;)I
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_4

    sget-object v0, Lj$/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    iget-wide v1, p0, Lj$/time/Instant;->seconds:J

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    :goto_0
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lj$/time/Instant;->nanos:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    return p1

    :cond_2
    iget p1, p0, Lj$/time/Instant;->nanos:I

    div-int/lit16 p1, p1, 0x3e8

    return p1

    :cond_3
    iget p1, p0, Lj$/time/Instant;->nanos:I

    return p1

    .line 1
    :cond_4
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalQueries;->$default$range(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 2
    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    .line 3
    invoke-virtual {p0, v1}, Lj$/time/Instant;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v1

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public final getEpochSecond()J
    .locals 2

    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    return-wide v0
.end method

.method public final getLong(Lj$/time/temporal/TemporalField;)J
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_4

    sget-object v0, Lj$/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    return-wide v0

    :cond_0
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lj$/time/Instant;->nanos:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    :goto_0
    int-to-long v0, p1

    return-wide v0

    :cond_2
    iget p1, p0, Lj$/time/Instant;->nanos:I

    div-int/lit16 p1, p1, 0x3e8

    goto :goto_0

    :cond_3
    iget p1, p0, Lj$/time/Instant;->nanos:I

    goto :goto_0

    :cond_4
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNano()I
    .locals 1

    iget v0, p0, Lj$/time/Instant;->nanos:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lj$/time/Instant;->nanos:I

    mul-int/lit8 v0, v0, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public final isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;

    if-ne p1, v0, :cond_0

    sget-object p1, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object p1

    :cond_0
    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda4;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda4;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda3;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda3;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda5;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda5;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda6;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda6;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalQuery;->queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/TemporalQueries;->$default$range(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toEpochMilli()J
    .locals 6

    iget-wide v0, p0, Lj$/time/Instant;->seconds:J

    const v2, 0xf4240

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    iget v3, p0, Lj$/time/Instant;->nanos:I

    if-lez v3, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Lj$/time/temporal/TemporalQueries;->m$3(J)J

    move-result-wide v0

    iget v3, p0, Lj$/time/Instant;->nanos:I

    div-int/2addr v3, v2

    add-int/lit16 v3, v3, -0x3e8

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lj$/time/temporal/TemporalQueries;->m$3(J)J

    move-result-wide v0

    iget v3, p0, Lj$/time/Instant;->nanos:I

    div-int/2addr v3, v2

    :goto_0
    int-to-long v2, v3

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/TemporalQueries;->m(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lj$/time/format/DateTimeFormatter;->ISO_INSTANT:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
