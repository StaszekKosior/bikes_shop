package pl.bikes.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "addresses")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String country;

    @NotNull
    private String city;

    @NotNull
    private String postalCode;

    private String street;

    @NotNull
    private String homeNumber;

    @ManyToOne
    private User user;

}