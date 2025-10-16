.class public abstract synthetic Lj$/time/chrono/Chronology$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$get(Lj$/time/chrono/ChronoZonedDateTime;Lj$/time/temporal/TemporalField;)I
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/chrono/ChronoZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    check-cast p0, Lj$/time/ZonedDateTime;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p0

    check-cast p0, Lj$/time/LocalDateTime;

    invoke-virtual {p0, p1}, Lj$/time/LocalDateTime;->get(Lj$/time/temporal/TemporalField;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object p0

    invoke-virtual {p0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string p1, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {p0, p1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalQueries;->$default$get(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)I

    move-result p0

    return p0
.end method
