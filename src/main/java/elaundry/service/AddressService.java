/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package elaundry.service;


import java.util.List;

import elaundry.domain.Address;

/**
 *
 * @author kunda_000
 */
public interface AddressService
{
    List<Address> getAllAddress();
    void addAddress(Address address);
}
