.class public final Lj$/time/ZonedDateTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;
.implements Lj$/time/chrono/ChronoZonedDateTime;
.implements Ljava/io/Serializable;


# instance fields
.field private final dateTime:Lj$/time/LocalDateTime;

.field private final offset:Lj$/time/ZoneOffset;

.field private final zone:Lj$/time/ZoneId;


# direct methods
.method private constructor <init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    iput-object p2, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    iput-object p3, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    return-void
.end method

.method public static ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Instant;->getNano()I

    move-result p0

    .line 1
    move-object v2, p1

    check-cast v2, Lj$/time/ZoneOffset;

    .line 2
    invoke-static {v2}, Lj$/time/zone/ZoneRules;->of(Lj$/time/ZoneOffset;)Lj$/time/zone/ZoneRules;

    move-result-object v2

    int-to-long v3, p0

    .line 3
    invoke-static {v0, v1, v3, v4}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lj$/time/LocalDateTime;->ofEpochSecond(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object p0

    new-instance v0, Lj$/time/ZonedDateTime;

    invoke-direct {v0, p0, v2, p1}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneId;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "instant"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lj$/time/chrono/ChronoZonedDateTime;

    .line 2
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    check-cast p1, Lj$/time/ZonedDateTime;

    invoke-virtual {p1}, Lj$/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/LocalTime;->getNano()I

    move-result v0

    invoke-virtual {p1}, Lj$/time/ZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalTime;->getNano()I

    move-result v1

    sub-int v4, v0, v1

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v1, p1, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    .line 4
    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->compareTo(Lj$/time/chrono/ChronoLocalDateTime;)I

    move-result v4

    if-nez v4, :cond_0

    .line 5
    iget-object v0, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    .line 6
    invoke-virtual {v0}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    .line 8
    invoke-virtual {v1}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getChronology()V

    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-virtual {p1}, Lj$/time/ZonedDateTime;->getChronology()V

    const/4 v4, 0x0

    :cond_0
    return v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/ZonedDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/ZonedDateTime;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    iget-object v3, p1, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v1, v3}, Lj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    iget-object v3, p1, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v1, v3}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    iget-object p1, p1, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-virtual {v1, p1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final get(Lj$/time/temporal/TemporalField;)I
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->get(Lj$/time/temporal/TemporalField;)I

    move-result p1

    return p1

    .line 1
    :cond_0
    iget-object p1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    .line 2
    invoke-virtual {p1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v0, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p0, p1}, Lj$/time/chrono/Chronology$-CC;->$default$get(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public final getChronology()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    return-void
.end method

.method public final getLong(Lj$/time/temporal/TemporalField;)J
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 1
    :cond_0
    iget-object p1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    .line 2
    invoke-virtual {p1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOffset()Lj$/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-virtual {v1}, Lj$/time/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda5;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda5;

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {p1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda4;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda4;

    if-eq p1, v0, :cond_6

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda3;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda3;

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    goto :goto_1

    .line 4
    :cond_2
    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda6;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda6;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getChronology()V

    sget-object p1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    goto :goto_1

    :cond_4
    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;

    if-ne p1, v0, :cond_5

    sget-object p1, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    goto :goto_1

    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalQuery;->queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_6
    :goto_0
    iget-object p1, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    :goto_1
    return-object p1
.end method

.method public final range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0, p1}, Lj$/time/LocalDateTime;->range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public final toEpochSecond()J
    .locals 4

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final toLocalDate()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public final toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;
    .locals 1

    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public final toLocalTime()Lj$/time/LocalTime;
    .locals 1

    iget-object v0, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj$/time/ZonedDateTime;->dateTime:Lj$/time/LocalDateTime;

    invoke-virtual {v1}, Lj$/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/ZonedDateTime;->offset:Lj$/time/ZoneOffset;

    iget-object v2, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lj$/time/ZonedDateTime;->zone:Lj$/time/ZoneId;

    invoke-virtual {v0}, Lj$/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
